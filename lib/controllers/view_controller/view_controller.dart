import 'dart:async';
import 'package:state_notifier/state_notifier.dart';

import '../../models/view_state/view_state.dart';

class ViewController extends StateNotifier<PageState> {
  ViewController(): super(const PageState()) {
    Timer(Duration(seconds: 3), () => _loaded());
  }
  
  void onItemTapped(int index) {
    state = state.copyWith(currentIndex: index);
  }

  void _loaded() {
    state = state.copyWith(isLoading: false);
  }
}
