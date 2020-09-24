import 'package:flutter/foundation.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../models/auth/auth_state.dart';

class AuthController extends StateNotifier<AuthState> with LocatorMixin, UsesAuthRepository {
  AuthController(): super(const AuthState());

  @override
  final authRepository = MixInAuthRepository();

  @override
  void initState() {
    super.initState();
    _watchAuthState();
  }

  void _watchAuthState() {
    authRepository.authStateChanges()
      .listen((User u) {
        state = state.copyWith(user: u);
      });
  }

  void handleSignIn() async {
    await authRepository.signIn();
  }

  void handleSignOut() async {
    await authRepository.signOut();
  }
}

abstract class AuthRepository {
  Future<UserCredential> signIn();
  Future<void> signOut();
  Stream<User> authStateChanges();
}

mixin UsesAuthRepository {
  AuthRepository authRepository;
}

class MixInAuthRepository implements AuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  MixInAuthRepository() {
    if (kIsWeb) {
      _auth.setPersistence(Persistence.NONE);
    }
  }

  @override
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

  @override
  Future<void> signOut() async {
    await _auth.signOut();
  }

  @override
  Stream<User> authStateChanges() {
    return _auth.authStateChanges();
  }
}
