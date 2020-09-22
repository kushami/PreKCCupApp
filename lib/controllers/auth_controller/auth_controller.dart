import 'package:flutter/foundation.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../models/auth/auth_state.dart';

class AuthController extends StateNotifier<AuthState> with UsesAuthRepository {
  AuthController(): super(const AuthState());

  @override
  final authRepository = MixInAuthRepository();

  void handleSignIn() async {
    await authRepository.signIn()
        .then((cred) => state = state.copyWith(user: cred.user));
  }

  void handleSignOut() async {
    await authRepository.signOut()
        .then((_) => state = state.copyWith(user: null));
  }
}

abstract class AuthRepository {
  Future<UserCredential> signIn();
  Future<void> signOut();
}

mixin UsesAuthRepository {
  AuthRepository authRepository;
}

class MixInAuthRepository implements AuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<UserCredential> signIn() async {
    if (kIsWeb) {
      var gp = GoogleAuthProvider();

      return await _auth.signInWithPopup(gp);
    } else {
      return await Future<UserCredential>.value(null);
    }
  }

  @override
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
