import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'signin/signin_view.dart';
import 'home/home_view.dart';
import '../models/auth_state/auth_state.dart';

class RootView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (context.select<AuthState, User>((s) => s.user) == null)
        ? SigninView()
        : HomeView();
  }
}
