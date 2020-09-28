import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../models/auth_state/auth_state.dart';
import '../../controllers/auth_controller/auth_controller.dart';

class AppBarColumn extends StatelessWidget {
  Widget _userMenu(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            width: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.background,
                backgroundImage: NetworkImage(
                    context.select<AuthState, User>((s) => s.user).photoURL),
                radius: 25.0,
              ),
              SizedBox(
                width: 3.5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Hi, ' +
                        context
                            .select<AuthState, User>((s) => s.user)
                            .displayName,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'Welcome to the Pre KC Cup App.',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ],
              ),
            ],
          ),
          PopupMenuButton<String>(
            icon: Icon(
              Icons.more_vert,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            onSelected: (String s) {
              if (s == 'Sign Out') {
                context.read<AuthController>().handleSignOut();
              } else {
                print(s);
              }
            },
            itemBuilder: (BuildContext context) {
              return ['Sign Out'].map((String s) {
                return PopupMenuItem(
                  child: Text(s),
                  value: s,
                );
              }).toList();
            },
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 18.0),
        child: _userMenu(context),
      ),
    );
  }
}
