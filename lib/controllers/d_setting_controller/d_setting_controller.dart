import 'package:state_notifier/state_notifier.dart';

import '../../models/duelist_setting/duelist_setting.dart';

class DSettingController extends StateNotifier<DuelistSetting>
    with LocatorMixin {
  DSettingController() : super(const DuelistSetting());

  @override
  void initState() {
    super.initState();
    state = state.copyWith(
      myDeckID: 'testDeckID',
      mySkillID: 'testSkillID',
    );
  }

  void setMyDeck(String deckID) {
    state = state.copyWith(myDeckID: deckID);
  }

  void setMySkill(String skillID) {
    state = state.copyWith(mySkillID: skillID);
  }
}
