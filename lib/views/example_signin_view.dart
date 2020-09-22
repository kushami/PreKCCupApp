import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import '../controllers/auth_controller/auth_controller.dart';
import '../models/auth/auth_state.dart';

class SignInView extends StatelessWidget {
  SignInView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8.0),
      scrollDirection: Axis.vertical,
      children: <Widget>[
        _SignInSection(),
        _SignOutSection(),
      ],
    );
  }
}

class _SignInSection extends StatelessWidget {
  _SignInSection();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 16.0),
              child: Center(
                child: kIsWeb
                  ? Text('running: WEB')
                  : Text('running: Android or iOS'),
              )
            ),
            Container(
              padding: EdgeInsets.only(top: 16.0),
              alignment: Alignment.center,
              child: context.select<AuthState, User>((state) => state.user) != null
                ? Text(context.select<AuthState, User>((state) => state.user).displayName)
                : SignInButton(
                  Buttons.GoogleDark,
                  text: 'Sign In',
                  onPressed: () async => context.read<AuthController>().handleSignIn(),
                ),
            )
          ],
        ),
      ),
    );
  }
}

class _SignOutSection extends StatelessWidget {
  _SignOutSection();

  @override
  Widget build(BuildContext context) {
    if (context.watch<AuthState>().user == null) {
      return Text('~~~');
    } else {
      return Card(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 16.0),
                alignment: Alignment.center,
                child: FlatButton(
                  child: const Text('Sign Out'),
                  textColor: Theme.of(context).buttonColor,
                  onPressed: () async => context.read<AuthController>().handleSignOut(),
                ),
              )
            ],
          ),
        ),
      );
    }
  }
}
