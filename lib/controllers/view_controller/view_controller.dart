import 'dart:async';
import 'package:state_notifier/state_notifier.dart';

import '../../models/view_state/view_state.dart';

class ViewController extends StateNotifier<ViewState> {
  ViewController() : super(const ViewState()) {
    Timer(Duration(milliseconds: 1500), () => _loaded());
  }

  void _loaded() {
    state = state.copyWith(isLoading: false);
  }
}
