import 'package:flutter/material.dart';

import 'login_background.dart';
import 'app_bar_column.dart';
import 'duelist_setting_card.dart';
import 'action_menu_card.dart';

class _allCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height * 0.01;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          AppBarColumn(),
          SizedBox(height: h),
          DuelistSettingCard(),
          SizedBox(height: h),
          ActionMenuCard(),
        ],
      ),
    );
  }
}

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          LoginBackground(),
          _allCards(),
        ],
      ),
    );
  }
}
