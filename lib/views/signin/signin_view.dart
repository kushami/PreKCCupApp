import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/button_list.dart';

import '../../controllers/auth_controller/auth_controller.dart';

class SigninView extends StatelessWidget {
  SigninView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 50.0,
                          backgroundColor: Theme.of(context).canvasColor,
                          child: Icon(
                            Icons.collections_bookmark_sharp,
                            size: 50.0,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30.0),
                        ),
                        Text(
                          'Pre KC Cup App',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SignInButton(
                      Buttons.Google,
                      text: 'Google Sign In',
                      onPressed: () async =>
                          context.read<AuthController>().handleSignIn(),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
