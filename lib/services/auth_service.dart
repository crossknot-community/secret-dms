import 'dart:io';

import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:flutter/services.dart';
import 'package:fpdart/fpdart.dart';
import 'package:secret_dms/constants/app_constants.dart';
import 'package:secret_dms/models/failure.dart';
import 'package:secret_dms/models/user.dart';
import 'package:secret_dms/services/local/base_storage.dart';

abstract class BaseAuthService {
  Future<Either<Failure, Session>> signInAnonymously();
  Future<Either<Either<Failure, String>, AppUser>> checkAuthStatus();
  Future<Either<Failure, Unit>> registerAccount({
    required AppUser appUser,
  });
}

class AuthService extends BaseAuthService {
  final Account account;
  final BaseStorage<AppUser> userStorage;
  final Database database;

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
    } catch (e) {
      print(e.toString());
      return left(Failure("Unknown error occured."));
    }
  }

  @override
  Future<Either<Either<Failure, String>, AppUser>> checkAuthStatus() async {
    final user = await userStorage.read();
    if (user != null) {
      return right(user);
    } else {
      try {
        final session = await account.getSession(sessionId: 'current');
        return left(right(session.userId));
      } on AppwriteException catch (e) {
        return left(left(Failure(e.message ?? 'login failed...')));
      }
    }
  }

  @override
  Future<Either<Failure, Unit>> registerAccount({
    required AppUser appUser,
  }) async {
    try {
      await database.createDocument(
        collectionId: AppConstants.userCollectionId,
        documentId: appUser.id,
        data: appUser.toMap(),
      );
      await userStorage.save(appUser);
      return right(unit);
    } on AppwriteException catch (e) {
      return left(Failure(e.message ?? 'Something went wrong'));
    }
  }
}
