import 'package:PreKCCupApp/controllers/d_setting_controller/d_setting_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dropdown_search/dropdown_search.dart';

import '../../models/duelist_setting/duelist_setting.dart';

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
                DropdownSearch(
                  showSearchBox: true,
                  items: ['カラクリ: KARAKURI', 'BF: BLACKWINGS', '不知火: SHIRANUI'],
                  selectedItem:
                      context.select<DuelistSetting, String>((s) => s.myDeckID),
                  onChanged: (i) =>
                      context.read<DSettingController>().setMyDeck(i),
                ),
                Text(
                  'Skill',
                ),
                DropdownSearch(
                  showSearchBox: true,
                  items: [
                    'リスタート: Restart',
                    '頂に立つ者: Peak Performance',
                    'レベル上昇: Level Augmentation',
                  ],
                  selectedItem: context
                      .select<DuelistSetting, String>((s) => s.mySkillID),
                  onChanged: (i) =>
                      context.read<DSettingController>().setMySkill(i),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
