import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'signin/signin_view.dart';
import 'home/home_view.dart';
import '../models/auth_state/auth_state.dart';
import '../models/duelist_setting/duelist_setting.dart';
import '../controllers/d_setting_controller/d_setting_controller.dart';
import '../repositories/value_persistence_repository/value_persistence_repo.dart';

class RootView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (context.select<AuthState, User>((s) => s.user) == null)
        ? SigninView()
        : Provider(
            create: (_) => ValuePersistenceRepository(),
            child: StateNotifierProvider<DSettingController, DuelistSetting>(
              create: (context) => DSettingController(),
              child: HomeView(),
            ));
  }
}
