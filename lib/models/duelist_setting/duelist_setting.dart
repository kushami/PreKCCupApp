import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'duelist_setting.freezed.dart';

@freezed
abstract class DuelistSetting with _$DuelistSetting {
  const factory DuelistSetting({
    @Default('') String myDeckID,
    @Default('') String mySkillID,
    @Default(0) int pkcNumber,
    @Default(0) int playerNumber,
  }) = _DuelistSetting;
}
