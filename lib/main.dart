import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:firebase_core/firebase_core.dart';

// UI
import 'theme/theme.dart';
import 'views/root_view.dart';
import 'views/splash/splash_view.dart';
import 'views/example/under_development.dart';

// States & Controllers
import 'models/view_state/view_state.dart';
import 'controllers/view_controller/view_controller.dart';
import 'models/auth_state/auth_state.dart';
import 'controllers/auth_controller/auth_controller.dart';

// Repositories
import 'repositories/auth_repository/auth_repository.dart';

void main() => runApp(Init());

class Init extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<ViewController, ViewState>(
      create: (context) => ViewController(),
      child: Provider(
        create: (_) => AuthRepository(),
        child: StateNotifierProvider<AuthController, AuthState>(
          create: (context) => AuthController(),
          child: MyApp(),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pre KC Cup App',
      theme: mainTheme,
      home: FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done &&
              context.select<ViewState, bool>((s) => !s.isLoading)) {
            return RootView();
          } else {
            return SplashView();
          }
        },
      ),
      routes: <String, WidgetBuilder>{},
      onUnknownRoute: (RouteSettings rs) => MaterialPageRoute(
        builder: (context) => UnderDevelopment(),
      ),
    );
  }
}
