import 'package:state_notifier/state_notifier.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../models/auth_state/auth_state.dart';
import '../../repositories/auth_repository/auth_repository.dart';

class AuthController extends StateNotifier<AuthState> with LocatorMixin {
  AuthController(this.read): super(const AuthState());

  @override
  final Locator read;

  @override
  void initState() {
    super.initState();
    _watchAuthState();
  }

  void _watchAuthState() {
    read<AuthRepository>().authStateChanges()
      .listen((User u) {
        state = state.copyWith(user: u);
      });
  }

  void handleSignIn() async {
    await read<AuthRepository>().signIn();
  }

  void handleSignOut() async {
    await read<AuthRepository>().signOut();
  }
}
