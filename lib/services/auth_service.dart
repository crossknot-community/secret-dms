import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:secret_dms/utils/failure.dart';
import 'package:secret_dms/utils/firebase_error_code.dart';

abstract class BaseAuthService {
  Future<Either<Failure, UserCredential>> signIn();
}

class AuthService extends BaseAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  @override
  Future<Either<Failure, UserCredential>> signIn() async {
    try {
      final userCreds = await _auth.signInAnonymously();
      return right(userCreds);
    } on FirebaseException catch (e) {
      String code = e.code;
      final message = getAppropriateMessageFromFirebaseCode(code);
      return left(Failure(message));
    }
  }
}
