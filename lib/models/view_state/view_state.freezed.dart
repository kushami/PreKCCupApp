// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ViewStateTearOff {
  const _$ViewStateTearOff();

// ignore: unused_element
  _ViewState call({bool isLoading = true}) {
    return _ViewState(
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ViewState = _$ViewStateTearOff();

/// @nodoc
mixin _$ViewState {
  bool get isLoading;

  $ViewStateCopyWith<ViewState> get copyWith;
}

/// @nodoc
abstract class $ViewStateCopyWith<$Res> {
  factory $ViewStateCopyWith(ViewState value, $Res Function(ViewState) then) =
      _$ViewStateCopyWithImpl<$Res>;
  $Res call({bool isLoading});
}

/// @nodoc
class _$ViewStateCopyWithImpl<$Res> implements $ViewStateCopyWith<$Res> {
  _$ViewStateCopyWithImpl(this._value, this._then);

  final ViewState _value;
  // ignore: unused_field
  final $Res Function(ViewState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
abstract class _$ViewStateCopyWith<$Res> implements $ViewStateCopyWith<$Res> {
  factory _$ViewStateCopyWith(
          _ViewState value, $Res Function(_ViewState) then) =
      __$ViewStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading});
}

/// @nodoc
class __$ViewStateCopyWithImpl<$Res> extends _$ViewStateCopyWithImpl<$Res>
    implements _$ViewStateCopyWith<$Res> {
  __$ViewStateCopyWithImpl(_ViewState _value, $Res Function(_ViewState) _then)
      : super(_value, (v) => _then(v as _ViewState));

  @override
  _ViewState get _value => super._value as _ViewState;

  @override
  $Res call({
    Object isLoading = freezed,
  }) {
    return _then(_ViewState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_ViewState with DiagnosticableTreeMixin implements _ViewState {
  const _$_ViewState({this.isLoading = true}) : assert(isLoading != null);

  @JsonKey(defaultValue: true)
  @override
  final bool isLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ViewState(isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ViewState'))
      ..add(DiagnosticsProperty('isLoading', isLoading));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isLoading);

  @override
  _$ViewStateCopyWith<_ViewState> get copyWith =>
      __$ViewStateCopyWithImpl<_ViewState>(this, _$identity);
}

abstract class _ViewState implements ViewState {
  const factory _ViewState({bool isLoading}) = _$_ViewState;

  @override
  bool get isLoading;
  @override
  _$ViewStateCopyWith<_ViewState> get copyWith;
}
