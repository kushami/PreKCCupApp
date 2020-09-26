// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PageStateTearOff {
  const _$PageStateTearOff();

// ignore: unused_element
  _PageState call({bool isLoading = true, int currentIndex = 0}) {
    return _PageState(
      isLoading: isLoading,
      currentIndex: currentIndex,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PageState = _$PageStateTearOff();

/// @nodoc
mixin _$PageState {
  bool get isLoading;
  int get currentIndex;

  $PageStateCopyWith<PageState> get copyWith;
}

/// @nodoc
abstract class $PageStateCopyWith<$Res> {
  factory $PageStateCopyWith(PageState value, $Res Function(PageState) then) =
      _$PageStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, int currentIndex});
}

/// @nodoc
class _$PageStateCopyWithImpl<$Res> implements $PageStateCopyWith<$Res> {
  _$PageStateCopyWithImpl(this._value, this._then);

  final PageState _value;
  // ignore: unused_field
  final $Res Function(PageState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object currentIndex = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      currentIndex:
          currentIndex == freezed ? _value.currentIndex : currentIndex as int,
    ));
  }
}

/// @nodoc
abstract class _$PageStateCopyWith<$Res> implements $PageStateCopyWith<$Res> {
  factory _$PageStateCopyWith(
          _PageState value, $Res Function(_PageState) then) =
      __$PageStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, int currentIndex});
}

/// @nodoc
class __$PageStateCopyWithImpl<$Res> extends _$PageStateCopyWithImpl<$Res>
    implements _$PageStateCopyWith<$Res> {
  __$PageStateCopyWithImpl(_PageState _value, $Res Function(_PageState) _then)
      : super(_value, (v) => _then(v as _PageState));

  @override
  _PageState get _value => super._value as _PageState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object currentIndex = freezed,
  }) {
    return _then(_PageState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      currentIndex:
          currentIndex == freezed ? _value.currentIndex : currentIndex as int,
    ));
  }
}

/// @nodoc
class _$_PageState with DiagnosticableTreeMixin implements _PageState {
  const _$_PageState({this.isLoading = true, this.currentIndex = 0})
      : assert(isLoading != null),
        assert(currentIndex != null);

  @JsonKey(defaultValue: true)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: 0)
  @override
  final int currentIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PageState(isLoading: $isLoading, currentIndex: $currentIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PageState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('currentIndex', currentIndex));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PageState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.currentIndex, currentIndex) ||
                const DeepCollectionEquality()
                    .equals(other.currentIndex, currentIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(currentIndex);

  @override
  _$PageStateCopyWith<_PageState> get copyWith =>
      __$PageStateCopyWithImpl<_PageState>(this, _$identity);
}

abstract class _PageState implements PageState {
  const factory _PageState({bool isLoading, int currentIndex}) = _$_PageState;

  @override
  bool get isLoading;
  @override
  int get currentIndex;
  @override
  _$PageStateCopyWith<_PageState> get copyWith;
}
