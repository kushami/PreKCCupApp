import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'counter.freezed.dart';

@freezed
abstract class CounterState with _$CounterState {
  const factory CounterState({
    @Default(0) int count,
    @Default(true) bool isEnabled,
  }) = _CounterState;
}

class CounterController extends StateNotifier<CounterState> with UsesCounterRepository {
  CounterController() : super(const CounterState());

  final counterRepository = MixInCounterRepository();

  // 以下が Behavior にあたるアレ
  void increment() {
    state = state.copyWith(count: state.count + 1);
  }

  Future<void> fetchNum() async {
    state = state.copyWith(
      count: await counterRepository.getNumber(),
    );
  }

  void disable() {
    if (state.isEnabled) {
      state = state.copyWith(isEnabled: false);
    }
  }

  void enable() {
    if (!state.isEnabled) {
      state = state.copyWith(isEnabled: true);
    }
  }
}

abstract class CounterRepository {
  Future<int> getNumber();
}

class MixInCounterRepository implements CounterRepository {
  Future<int> getNumber() {
    return new Future<int>.value(0);
  }
}

mixin UsesCounterRepository {
  CounterRepository counterRepository;
}
