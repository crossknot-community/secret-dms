import 'dart:io';

import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:flutter/services.dart';
import 'package:fpdart/fpdart.dart';
import 'package:secret_dms/constants/app_constants.dart';
import 'package:secret_dms/models/user.dart';
import 'package:secret_dms/services/local/user_storage.dart';
import 'package:secret_dms/utils/failure.dart';

abstract class BaseAuthService {
  Future<Either<Failure, Session>> signInAnonymously();
  Future<Either<Failure, AppUser>> checkAuthStatus();
  Future<Either<Failure, Unit>> registerAccount({
    required AppUser appUser,
  });
}

class AuthService extends BaseAuthService {
  final Account account;
  final UserStorage userStorage;
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
      return left(Failure("Unknown error occured."));
    }
  }

  @override
  Future<Either<Failure, AppUser>> checkAuthStatus() async {
    final user = await userStorage.read();
    if (user != null) {
      return right(user);
    }
    return left(Failure("Please sign in before continuing..."));
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
