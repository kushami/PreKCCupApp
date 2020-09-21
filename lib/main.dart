import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';

import './counter/counter.dart';
import './counter/counter_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pre KC Cup App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StateNotifierProvider<CounterController, CounterState>(
        create: (_) => CounterController(),
        child: CounterView(),
      ),
    );
  }
}
