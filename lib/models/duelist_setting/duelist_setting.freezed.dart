// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'duelist_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DuelistSettingTearOff {
  const _$DuelistSettingTearOff();

// ignore: unused_element
  _DuelistSetting call(
      {String myDeckID = '',
      String mySkillID = '',
      int pkcNumber = 0,
      int playerNumber = 0}) {
    return _DuelistSetting(
      myDeckID: myDeckID,
      mySkillID: mySkillID,
      pkcNumber: pkcNumber,
      playerNumber: playerNumber,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DuelistSetting = _$DuelistSettingTearOff();

/// @nodoc
mixin _$DuelistSetting {
  String get myDeckID;
  String get mySkillID;
  int get pkcNumber;
  int get playerNumber;

  $DuelistSettingCopyWith<DuelistSetting> get copyWith;
}

/// @nodoc
abstract class $DuelistSettingCopyWith<$Res> {
  factory $DuelistSettingCopyWith(
          DuelistSetting value, $Res Function(DuelistSetting) then) =
      _$DuelistSettingCopyWithImpl<$Res>;
  $Res call(
      {String myDeckID, String mySkillID, int pkcNumber, int playerNumber});
}

/// @nodoc
class _$DuelistSettingCopyWithImpl<$Res>
    implements $DuelistSettingCopyWith<$Res> {
  _$DuelistSettingCopyWithImpl(this._value, this._then);

  final DuelistSetting _value;
  // ignore: unused_field
  final $Res Function(DuelistSetting) _then;

  @override
  $Res call({
    Object myDeckID = freezed,
    Object mySkillID = freezed,
    Object pkcNumber = freezed,
    Object playerNumber = freezed,
  }) {
    return _then(_value.copyWith(
      myDeckID: myDeckID == freezed ? _value.myDeckID : myDeckID as String,
      mySkillID: mySkillID == freezed ? _value.mySkillID : mySkillID as String,
      pkcNumber: pkcNumber == freezed ? _value.pkcNumber : pkcNumber as int,
      playerNumber:
          playerNumber == freezed ? _value.playerNumber : playerNumber as int,
    ));
  }
}

/// @nodoc
abstract class _$DuelistSettingCopyWith<$Res>
    implements $DuelistSettingCopyWith<$Res> {
  factory _$DuelistSettingCopyWith(
          _DuelistSetting value, $Res Function(_DuelistSetting) then) =
      __$DuelistSettingCopyWithImpl<$Res>;
  @override
  $Res call(
      {String myDeckID, String mySkillID, int pkcNumber, int playerNumber});
}

/// @nodoc
class __$DuelistSettingCopyWithImpl<$Res>
    extends _$DuelistSettingCopyWithImpl<$Res>
    implements _$DuelistSettingCopyWith<$Res> {
  __$DuelistSettingCopyWithImpl(
      _DuelistSetting _value, $Res Function(_DuelistSetting) _then)
      : super(_value, (v) => _then(v as _DuelistSetting));

  @override
  _DuelistSetting get _value => super._value as _DuelistSetting;

  @override
  $Res call({
    Object myDeckID = freezed,
    Object mySkillID = freezed,
    Object pkcNumber = freezed,
    Object playerNumber = freezed,
  }) {
    return _then(_DuelistSetting(
      myDeckID: myDeckID == freezed ? _value.myDeckID : myDeckID as String,
      mySkillID: mySkillID == freezed ? _value.mySkillID : mySkillID as String,
      pkcNumber: pkcNumber == freezed ? _value.pkcNumber : pkcNumber as int,
      playerNumber:
          playerNumber == freezed ? _value.playerNumber : playerNumber as int,
    ));
  }
}

/// @nodoc
class _$_DuelistSetting
    with DiagnosticableTreeMixin
    implements _DuelistSetting {
  const _$_DuelistSetting(
      {this.myDeckID = '',
      this.mySkillID = '',
      this.pkcNumber = 0,
      this.playerNumber = 0})
      : assert(myDeckID != null),
        assert(mySkillID != null),
        assert(pkcNumber != null),
        assert(playerNumber != null);

  @JsonKey(defaultValue: '')
  @override
  final String myDeckID;
  @JsonKey(defaultValue: '')
  @override
  final String mySkillID;
  @JsonKey(defaultValue: 0)
  @override
  final int pkcNumber;
  @JsonKey(defaultValue: 0)
  @override
  final int playerNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DuelistSetting(myDeckID: $myDeckID, mySkillID: $mySkillID, pkcNumber: $pkcNumber, playerNumber: $playerNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DuelistSetting'))
      ..add(DiagnosticsProperty('myDeckID', myDeckID))
      ..add(DiagnosticsProperty('mySkillID', mySkillID))
      ..add(DiagnosticsProperty('pkcNumber', pkcNumber))
      ..add(DiagnosticsProperty('playerNumber', playerNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DuelistSetting &&
            (identical(other.myDeckID, myDeckID) ||
                const DeepCollectionEquality()
                    .equals(other.myDeckID, myDeckID)) &&
            (identical(other.mySkillID, mySkillID) ||
                const DeepCollectionEquality()
                    .equals(other.mySkillID, mySkillID)) &&
            (identical(other.pkcNumber, pkcNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pkcNumber, pkcNumber)) &&
            (identical(other.playerNumber, playerNumber) ||
                const DeepCollectionEquality()
                    .equals(other.playerNumber, playerNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(myDeckID) ^
      const DeepCollectionEquality().hash(mySkillID) ^
      const DeepCollectionEquality().hash(pkcNumber) ^
      const DeepCollectionEquality().hash(playerNumber);

  @override
  _$DuelistSettingCopyWith<_DuelistSetting> get copyWith =>
      __$DuelistSettingCopyWithImpl<_DuelistSetting>(this, _$identity);
}

abstract class _DuelistSetting implements DuelistSetting {
  const factory _DuelistSetting(
      {String myDeckID,
      String mySkillID,
      int pkcNumber,
      int playerNumber}) = _$_DuelistSetting;

  @override
  String get myDeckID;
  @override
  String get mySkillID;
  @override
  int get pkcNumber;
  @override
  int get playerNumber;
  @override
  _$DuelistSettingCopyWith<_DuelistSetting> get copyWith;
}
