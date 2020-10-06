import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../models/duelist_setting/duelist_setting.dart';
import '../../controllers/d_setting_controller/d_setting_controller.dart';

class DuelistSettingCard extends StatelessWidget {
  Future<List<String>> _snapshotToList(Query query, String filter) async {
    var items = <String>[];
    var snapshot = await query.get();
    snapshot.docs.forEach((element) {
      items.add(element.data()['name']);
    });
    return items;
  }

  @override
  Widget build(BuildContext context) {
    final firestore = FirebaseFirestore.instance;
    Query decks = firestore.collection('decks');
    Query skills = firestore.collection('skills');

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
                  items: <String>[],
                  onFind: (filter) => _snapshotToList(decks, filter),
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
                  items: <String>[],
                  onFind: (filter) => _snapshotToList(skills, filter),
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
