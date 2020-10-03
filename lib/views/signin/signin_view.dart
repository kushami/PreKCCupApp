import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/button_list.dart';

import '../common_items/widgets/opening_template_widget.dart';
import '../../controllers/auth_controller/auth_controller.dart';

class SigninView extends StatelessWidget {
  SigninView();

  @override
  Widget build(BuildContext context) {
    return OpeningTemplateWidget(
      <Widget>[
        SignInButton(
          Buttons.Google,
          text: 'Google Sign In',
          onPressed: () async => context.read<AuthController>().handleSignIn(),
        ),
      ],
    );
  }
}
