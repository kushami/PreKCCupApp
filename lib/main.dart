import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';

import 'views/root_view.dart';
import 'models/view_state/view_state.dart';
import 'models/auth_state/auth_state.dart';
import 'controllers/view_controller/view_controller.dart';
import 'controllers/auth_controller/auth_controller.dart';
import 'repositories/auth_repository/auth_repository.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => AuthRepository(),
      child: MultiProvider(
        providers: [
          StateNotifierProvider<AuthController, AuthState>(
            create: (context) => AuthController()
          ),
          StateNotifierProvider<ViewController, PageState>(
            create: (context) => ViewController(),
          )
        ],
        child: MaterialApp(
          title: 'Pre KC Cup App',
          theme: ThemeData(
            primarySwatch: Colors.blueGrey,
            brightness: Brightness.dark,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: RootView(),
        ),
      ),
    );
  }
}
