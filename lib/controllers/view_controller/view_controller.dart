import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'view_controller.freezed.dart';

@freezed
abstract class PageState with _$PageState {
  const factory PageState({
    @Default(0) int currentIndex,
  }) = _PageState;
}

class ViewController extends StateNotifier<PageState> {
  ViewController(): super(const PageState());

  void onItemTapped(int index) {
    state = state.copyWith(currentIndex: index);
  }
}
