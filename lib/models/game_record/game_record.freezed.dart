// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'game_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GameRecordTearOff {
  const _$GameRecordTearOff();

// ignore: unused_element
  _GameRecord call(
      {@required String id,
      @required DateTime timestamp,
      @required Result result,
      @required First first,
      @required int myPlayerNum,
      @required String myDeckID,
      @required String mySkillID,
      @required int oppPlayerNum,
      String oppDeckID,
      String oppSkillID}) {
    return _GameRecord(
      id: id,
      timestamp: timestamp,
      result: result,
      first: first,
      myPlayerNum: myPlayerNum,
      myDeckID: myDeckID,
      mySkillID: mySkillID,
      oppPlayerNum: oppPlayerNum,
      oppDeckID: oppDeckID,
      oppSkillID: oppSkillID,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GameRecord = _$GameRecordTearOff();

/// @nodoc
mixin _$GameRecord {
  String get id;
  DateTime get timestamp;
  Result get result;
  First get first;
  int get myPlayerNum;
  String get myDeckID;
  String get mySkillID;
  int get oppPlayerNum;
  String get oppDeckID;
  String get oppSkillID;

  $GameRecordCopyWith<GameRecord> get copyWith;
}

/// @nodoc
abstract class $GameRecordCopyWith<$Res> {
  factory $GameRecordCopyWith(
          GameRecord value, $Res Function(GameRecord) then) =
      _$GameRecordCopyWithImpl<$Res>;
  $Res call(
      {String id,
      DateTime timestamp,
      Result result,
      First first,
      int myPlayerNum,
      String myDeckID,
      String mySkillID,
      int oppPlayerNum,
      String oppDeckID,
      String oppSkillID});
}

/// @nodoc
class _$GameRecordCopyWithImpl<$Res> implements $GameRecordCopyWith<$Res> {
  _$GameRecordCopyWithImpl(this._value, this._then);

  final GameRecord _value;
  // ignore: unused_field
  final $Res Function(GameRecord) _then;

  @override
  $Res call({
    Object id = freezed,
    Object timestamp = freezed,
    Object result = freezed,
    Object first = freezed,
    Object myPlayerNum = freezed,
    Object myDeckID = freezed,
    Object mySkillID = freezed,
    Object oppPlayerNum = freezed,
    Object oppDeckID = freezed,
    Object oppSkillID = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      timestamp:
          timestamp == freezed ? _value.timestamp : timestamp as DateTime,
      result: result == freezed ? _value.result : result as Result,
      first: first == freezed ? _value.first : first as First,
      myPlayerNum:
          myPlayerNum == freezed ? _value.myPlayerNum : myPlayerNum as int,
      myDeckID: myDeckID == freezed ? _value.myDeckID : myDeckID as String,
      mySkillID: mySkillID == freezed ? _value.mySkillID : mySkillID as String,
      oppPlayerNum:
          oppPlayerNum == freezed ? _value.oppPlayerNum : oppPlayerNum as int,
      oppDeckID: oppDeckID == freezed ? _value.oppDeckID : oppDeckID as String,
      oppSkillID:
          oppSkillID == freezed ? _value.oppSkillID : oppSkillID as String,
    ));
  }
}

/// @nodoc
abstract class _$GameRecordCopyWith<$Res> implements $GameRecordCopyWith<$Res> {
  factory _$GameRecordCopyWith(
          _GameRecord value, $Res Function(_GameRecord) then) =
      __$GameRecordCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      DateTime timestamp,
      Result result,
      First first,
      int myPlayerNum,
      String myDeckID,
      String mySkillID,
      int oppPlayerNum,
      String oppDeckID,
      String oppSkillID});
}

/// @nodoc
class __$GameRecordCopyWithImpl<$Res> extends _$GameRecordCopyWithImpl<$Res>
    implements _$GameRecordCopyWith<$Res> {
  __$GameRecordCopyWithImpl(
      _GameRecord _value, $Res Function(_GameRecord) _then)
      : super(_value, (v) => _then(v as _GameRecord));

  @override
  _GameRecord get _value => super._value as _GameRecord;

  @override
  $Res call({
    Object id = freezed,
    Object timestamp = freezed,
    Object result = freezed,
    Object first = freezed,
    Object myPlayerNum = freezed,
    Object myDeckID = freezed,
    Object mySkillID = freezed,
    Object oppPlayerNum = freezed,
    Object oppDeckID = freezed,
    Object oppSkillID = freezed,
  }) {
    return _then(_GameRecord(
      id: id == freezed ? _value.id : id as String,
      timestamp:
          timestamp == freezed ? _value.timestamp : timestamp as DateTime,
      result: result == freezed ? _value.result : result as Result,
      first: first == freezed ? _value.first : first as First,
      myPlayerNum:
          myPlayerNum == freezed ? _value.myPlayerNum : myPlayerNum as int,
      myDeckID: myDeckID == freezed ? _value.myDeckID : myDeckID as String,
      mySkillID: mySkillID == freezed ? _value.mySkillID : mySkillID as String,
      oppPlayerNum:
          oppPlayerNum == freezed ? _value.oppPlayerNum : oppPlayerNum as int,
      oppDeckID: oppDeckID == freezed ? _value.oppDeckID : oppDeckID as String,
      oppSkillID:
          oppSkillID == freezed ? _value.oppSkillID : oppSkillID as String,
    ));
  }
}

/// @nodoc
class _$_GameRecord with DiagnosticableTreeMixin implements _GameRecord {
  const _$_GameRecord(
      {@required this.id,
      @required this.timestamp,
      @required this.result,
      @required this.first,
      @required this.myPlayerNum,
      @required this.myDeckID,
      @required this.mySkillID,
      @required this.oppPlayerNum,
      this.oppDeckID,
      this.oppSkillID})
      : assert(id != null),
        assert(timestamp != null),
        assert(result != null),
        assert(first != null),
        assert(myPlayerNum != null),
        assert(myDeckID != null),
        assert(mySkillID != null),
        assert(oppPlayerNum != null);

  @override
  final String id;
  @override
  final DateTime timestamp;
  @override
  final Result result;
  @override
  final First first;
  @override
  final int myPlayerNum;
  @override
  final String myDeckID;
  @override
  final String mySkillID;
  @override
  final int oppPlayerNum;
  @override
  final String oppDeckID;
  @override
  final String oppSkillID;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameRecord(id: $id, timestamp: $timestamp, result: $result, first: $first, myPlayerNum: $myPlayerNum, myDeckID: $myDeckID, mySkillID: $mySkillID, oppPlayerNum: $oppPlayerNum, oppDeckID: $oppDeckID, oppSkillID: $oppSkillID)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameRecord'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('result', result))
      ..add(DiagnosticsProperty('first', first))
      ..add(DiagnosticsProperty('myPlayerNum', myPlayerNum))
      ..add(DiagnosticsProperty('myDeckID', myDeckID))
      ..add(DiagnosticsProperty('mySkillID', mySkillID))
      ..add(DiagnosticsProperty('oppPlayerNum', oppPlayerNum))
      ..add(DiagnosticsProperty('oppDeckID', oppDeckID))
      ..add(DiagnosticsProperty('oppSkillID', oppSkillID));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GameRecord &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.first, first) ||
                const DeepCollectionEquality().equals(other.first, first)) &&
            (identical(other.myPlayerNum, myPlayerNum) ||
                const DeepCollectionEquality()
                    .equals(other.myPlayerNum, myPlayerNum)) &&
            (identical(other.myDeckID, myDeckID) ||
                const DeepCollectionEquality()
                    .equals(other.myDeckID, myDeckID)) &&
            (identical(other.mySkillID, mySkillID) ||
                const DeepCollectionEquality()
                    .equals(other.mySkillID, mySkillID)) &&
            (identical(other.oppPlayerNum, oppPlayerNum) ||
                const DeepCollectionEquality()
                    .equals(other.oppPlayerNum, oppPlayerNum)) &&
            (identical(other.oppDeckID, oppDeckID) ||
                const DeepCollectionEquality()
                    .equals(other.oppDeckID, oppDeckID)) &&
            (identical(other.oppSkillID, oppSkillID) ||
                const DeepCollectionEquality()
                    .equals(other.oppSkillID, oppSkillID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(first) ^
      const DeepCollectionEquality().hash(myPlayerNum) ^
      const DeepCollectionEquality().hash(myDeckID) ^
      const DeepCollectionEquality().hash(mySkillID) ^
      const DeepCollectionEquality().hash(oppPlayerNum) ^
      const DeepCollectionEquality().hash(oppDeckID) ^
      const DeepCollectionEquality().hash(oppSkillID);

  @override
  _$GameRecordCopyWith<_GameRecord> get copyWith =>
      __$GameRecordCopyWithImpl<_GameRecord>(this, _$identity);
}

abstract class _GameRecord implements GameRecord {
  const factory _GameRecord(
      {@required String id,
      @required DateTime timestamp,
      @required Result result,
      @required First first,
      @required int myPlayerNum,
      @required String myDeckID,
      @required String mySkillID,
      @required int oppPlayerNum,
      String oppDeckID,
      String oppSkillID}) = _$_GameRecord;

  @override
  String get id;
  @override
  DateTime get timestamp;
  @override
  Result get result;
  @override
  First get first;
  @override
  int get myPlayerNum;
  @override
  String get myDeckID;
  @override
  String get mySkillID;
  @override
  int get oppPlayerNum;
  @override
  String get oppDeckID;
  @override
  String get oppSkillID;
  @override
  _$GameRecordCopyWith<_GameRecord> get copyWith;
}
