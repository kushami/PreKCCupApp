import 'package:state_notifier/state_notifier.dart';

import '../../models/view_state/view_state.dart';

class ViewController extends StateNotifier<PageState> {
  ViewController(): super(const PageState());

  void onItemTapped(int index) {
    state = state.copyWith(currentIndex: index);
  }
}
