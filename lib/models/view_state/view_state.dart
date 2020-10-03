import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'view_state.freezed.dart';

@freezed
abstract class ViewState with _$ViewState {
  const factory ViewState({
    @Default(true) bool isLoading,
  }) = _ViewState;
}
