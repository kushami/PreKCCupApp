import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

import 'models/auth/auth_state.dart';
import 'controllers/auth_controller/auth_controller.dart';
import 'controllers/view_controller/view_controller.dart';

import 'views/root_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MultiProvider(
        providers: [
          StateNotifierProvider<ViewController, PageState>(
            create: (_) => ViewController(),
          ),
          StateNotifierProvider<AuthController, AuthState>(
            create: (_) => AuthController()
          ),
        ],
        child: RootView(),
      )
    );
  }
}
