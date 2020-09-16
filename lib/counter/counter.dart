import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'counter.freezed.dart';

typedef StateUpdate<T> = T Function(T prev);

@freezed
abstract class CounterState with _$CounterState {
  const factory CounterState({
    @Default(0) int count,
    @Default(true) bool isEnabled,
  }) = _CounterState;
}

class CounterStore extends StateNotifier<CounterState> {
  CounterStore(this.counterRepository) : super(const CounterState());

  final CounterRepository counterRepository;

  // TODO: 以下は Behavior なので、ここで持つべきではない？
  void increment() {
    state = state.copyWith(count: state.count + 1);
  }

  Future<void> fetchNum() async {
    state = state.copyWith(
      count: await counterRepository.getNumber(),
    );
  }

  void disable() {
    state = state.copyWith(isEnabled: false);
  }

  void enable() {
    state = state.copyWith(isEnabled: true);
  }
}

class CounterRepository {
  Future<int> getNumber() {
    return new Future<int>.value(0);
  }
}