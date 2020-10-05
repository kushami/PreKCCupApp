import 'package:state_notifier/state_notifier.dart';

import '../../models/duelist_setting/duelist_setting.dart';
import '../../repositories/value_persistence_repository/value_persistence_repo.dart';

class DSettingController extends StateNotifier<DuelistSetting>
    with LocatorMixin {
  DSettingController() : super(const DuelistSetting());

  ValuePersistenceRepository get _sharedPrefs => read();

  @override
  void initState() {
    super.initState();

    // TODO: PKC 参加してる人はいい感じに Number ふられるようにする
    // 登録されていないと 0.
    state = state.copyWith(
      pkcNumber: 0,
      playerNumber: 0,
    );

    _sharedPrefs.getString('myDeckID').then(
        (deckID) => state = state.copyWith(myDeckID: deckID ?? 'No Selected'));
    _sharedPrefs.getString('mySkillID').then((skillID) =>
        state = state.copyWith(mySkillID: skillID ?? 'No Selected'));
  }

  void setMyDeck(String deckID) async {
    state = state.copyWith(myDeckID: deckID);
    await _sharedPrefs.setString('myDeckID', deckID);
  }

  void setMySkill(String skillID) async {
    state = state.copyWith(mySkillID: skillID);
    await _sharedPrefs.setString('mySkillID', skillID);
  }
}
