import 'package:flutter/material.dart';

import '../common_items/widgets/opening_template_widget.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OpeningTemplateWidget(<Widget>[
      CircularProgressIndicator(),
      Padding(padding: EdgeInsets.only(top: 10.0)),
      Text(
        'Loading ...',
        softWrap: true,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
          color: Theme.of(context).primaryColor,
        ),
      ),
    ]);
  }
}
