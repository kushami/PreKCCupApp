import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  AuthRepository() {
    if (kIsWeb) {
      _auth.setPersistence(Persistence.NONE);
    }
  }

  Future<UserCredential> signIn() async {
    if (kIsWeb) {
      var gp = GoogleAuthProvider();

      return await _auth.signInWithPopup(gp);
    } else {
      final googleUser = await GoogleSignIn().signIn();
      final googleAuth = await googleUser.authentication;
      final GoogleAuthCredential googleAuthCredential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      return _auth.signInWithCredential(googleAuthCredential);
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  Stream<User> authStateChanges() {
    return _auth.authStateChanges();
  }
}
