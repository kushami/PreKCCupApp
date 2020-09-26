import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'view_state.freezed.dart';

@freezed
abstract class PageState with _$PageState {
  const factory PageState({
    @Default(true) bool isLoading,
    @Default(0) int currentIndex,
  }) = _PageState;
}
