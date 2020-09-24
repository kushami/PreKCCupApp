import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'view_state.freezed.dart';

@freezed
abstract class PageState with _$PageState {
  const factory PageState({
    @Default(0) int currentIndex,
  }) = _PageState;
}
