import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home/home_view.dart';
import 'example/example_view.dart';
import '../models/view_state/view_state.dart';
import '../controllers/view_controller/view_controller.dart';

class RootView extends StatelessWidget {
  final List<Widget> _pageWidgets = [
    HomeView(),
    ExampleView(color:Colors.orange, title:'戦績入力とか'),
    ExampleView(color:Colors.blue, title:'アカウント'),
    ExampleView(color:Colors.lightGreen, title:'利用規約とかアプリについてとか'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageWidgets[context.select<PageState, int>((state) => state.currentIndex)],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.whatshot), title: Text('大会情報')),
          BottomNavigationBarItem(icon: Icon(Icons.account_box), title: Text('アカウント')),
          BottomNavigationBarItem(icon: Icon(Icons.devices_other), title: Text('その他')),
        ],
        currentIndex: context.select<PageState, int>((state) => state.currentIndex),
        onTap: (index) => context.read<ViewController>().onItemTapped(index),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
