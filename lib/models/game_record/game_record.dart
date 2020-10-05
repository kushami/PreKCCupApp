import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'game_record.freezed.dart';

@freezed
abstract class GameRecord with _$GameRecord {
  const factory GameRecord({
    @required String id,
    @required DateTime timestamp,
    @required Result result,
    @required First first,
    @required int myPlayerNum,
    @required String myDeckID,
    @required String mySkillID,
    @required int oppPlayerNum,
    String oppDeckID,
    String oppSkillID,
  }) = _GameRecord;
}

enum Result { win, lose }

enum First { play, draw }
