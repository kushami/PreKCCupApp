import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';

import 'package:PreKCCupApp/counter/counter.dart';
import 'package:PreKCCupApp/counter/counter_view.dart';

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
      home: StateNotifierProvider<CounterStore, CounterState>(
        create: (_) => CounterStore(CounterRepository()),
        child: CounterView(),
      ),
    );
  }
}

