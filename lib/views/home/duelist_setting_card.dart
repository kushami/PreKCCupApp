import 'package:PreKCCupApp/controllers/d_setting_controller/d_setting_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/duelist_setting/duelist_setting.dart';

import 'dart:math';

class DuelistSettingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        elevation: 2.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Text(
                  'Deck Theme',
                ),
                Text(
                  context.select<DuelistSetting, String>((s) => s.myDeckID),
                ),
                RaisedButton(
                  child: Text('set abc'),
                  onPressed: () => context
                      .read<DSettingController>()
                      .setMyDeck(Random().nextInt(120).toString()),
                  textColor: Theme.of(context).colorScheme.onPrimary,
                ),
                Text(
                  'Skill',
                ),
                Text(
                  context.select<DuelistSetting, String>((s) => s.mySkillID),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
