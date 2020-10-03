import 'package:flutter/material.dart';

import 'login_background.dart';
import 'app_bar_column.dart';
import 'action_menu_card.dart';

class HomeView extends StatelessWidget {
  Widget _allCards(BuildContext context) {
    final h = MediaQuery.of(context).size.height * 0.01;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          AppBarColumn(),
          SizedBox(height: h),
          ActionMenuCard(),
          SizedBox(height: h),
          ActionMenuCard(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          LoginBackground(),
          _allCards(context),
        ],
      ),
    );
  }
}
