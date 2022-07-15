import 'dart:io';

import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:flutter/services.dart';
import 'package:fpdart/fpdart.dart';
import 'package:secret_dms/constants/secrets.dart';
import 'package:secret_dms/models/failure.dart';
import 'package:secret_dms/models/user.dart';
import 'package:secret_dms/services/local/base_storage.dart';

abstract class BaseAuthService {
  Future<Either<Failure, Session>> signInAnonymously();
  Future<Either<Either<Failure, String>, AppUser>> checkAuthStatus();
  Future<Either<Failure, Unit>> registerAccount({
    required AppUser appUser,
  });
  Future<void> signout();
}

class AuthService extends BaseAuthService {
  final Account account;
  final BaseStorage<AppUser> userStorage;
  final Databases database;

  AuthService({
    required this.account,
    required this.database,
    required this.userStorage,
  });
  @override
  Future<Either<Failure, Session>> signInAnonymously() async {
    try {
      final session = await account.createAnonymousSession();
      return right(session);
    } on PlatformException {
      return left(Failure("Platform not supported yet"));
    } on SocketException {
      return left(Failure("Internet Unavailable"));
    } on AppwriteException catch (e) {
      return left(Failure(e.message ?? 'Unknown error occured'));
    }
  }

  /// First off we fetch [session] of the current user
  /// and read the local db if the user is registered.
  /// if the user is signed in this function returns
  /// [AuthState.authenticated(sessionId)] if the user
  /// is registered then it returns [AuthState.registered(user)]
  /// if the [user] is present in the local db but the session has expired it clears the db and logs out the user.
  @override
  Future<Either<Either<Failure, String>, AppUser>> checkAuthStatus() async {
    try {
      final session = await account.getSession(sessionId: 'current');
      final user = await userStorage.read();
      if (session.userId.isEmpty) {
        await userStorage.clear();
        return left(
            left(Failure('Session expired, please make another account.')));
      } else if (user != null) {
        return right(user);
      }
      return left(right(session.userId));
    } on AppwriteException catch (e) {
      return left(left(Failure(e.message ?? 'login failed...')));
    }
  }

  @override
  Future<Either<Failure, Unit>> registerAccount({
    required AppUser appUser,
  }) async {
    try {
      final results = await database.listDocuments(
        collectionId: AppSecrets.collectionId,
        queries: [
          Query.equal('username', appUser.username),
        ],
      );
      if (results.total > 0) {
        return left(Failure("Username exists! Please pick another one."));
      }

      await database.createDocument(
        collectionId: AppSecrets.collectionId,
        documentId: appUser.id,
        data: appUser.toMap(),
      );
      await userStorage.save(appUser);
      return right(unit);
    } on AppwriteException catch (e) {
      return left(Failure(e.message ?? 'Something went wrong'));
    }
  }

  @override
  Future<void> signout() async {
    final session = await account.getSession(sessionId: 'current');
    await account.deleteSession(sessionId: session.$id);
    await userStorage.clear();
  }
}
