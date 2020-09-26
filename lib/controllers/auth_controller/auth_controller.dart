import 'package:state_notifier/state_notifier.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../models/auth_state/auth_state.dart';
import '../../repositories/auth_repository/auth_repository.dart';

class AuthController extends StateNotifier<AuthState> with LocatorMixin {
  AuthController(): super(const AuthState());

  AuthRepository get _authRepository => read();

  @override
  void initState() {
    super.initState();
    _watchAuthState();
  }

  void _watchAuthState() {
    _authRepository.authStateChanges()
      .listen((User u) {
        state = state.copyWith(user: u);
      });
  }

  void handleSignIn() async {
    await _authRepository.signIn();
  }

  void handleSignOut() async {
    await _authRepository.signOut();
  }
}
