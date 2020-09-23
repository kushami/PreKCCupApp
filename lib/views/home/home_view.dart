import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/button_list.dart';

import '../../models/auth/auth_state.dart';
import '../../controllers/auth_controller/auth_controller.dart';


class HomeView extends StatelessWidget {
  HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8.0),
      scrollDirection: Axis.vertical,
      children: <Widget>[
        PlatformInfoCard(),
        UserAccountCard(),
      ],
    );
  }
}

class PlatformInfoCard extends StatelessWidget {
  PlatformInfoCard();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          padding: EdgeInsets.only(top: 8.0),
          child: Center(
            child: kIsWeb
              ? Text('Platform: WEB')
              : Text('Platform: Android or iOS'),
          )
        ),
      ),
    );
  }
}

class UserAccountCard extends StatelessWidget {
  UserAccountCard();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('ユーザアカウント'),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            alignment: Alignment.topCenter,
            child: context.select<AuthState, User>((state) => state.user) != null
              ? RaisedButton(
                  child: const Text('Sign Out'),
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  onPressed: () async => context.read<AuthController>().handleSignOut(),
                )
              : SignInButton(
                  Buttons.GoogleDark,
                  text: 'Sign In',
                  onPressed: () async => context.read<AuthController>().handleSignIn(),
                ),
          ),
          /*
          RaisedButton(
            child: Text('test'),
            onPressed: () => context.read<AuthController>().test()),

           */
        ],
      ),
    );
  }
}
