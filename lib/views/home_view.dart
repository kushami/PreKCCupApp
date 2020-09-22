import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'example_view.dart';
import 'example_signin_view.dart';
import '../controllers/view_controller/view_controller.dart';

class HomeView extends StatelessWidget {
  final List<Widget> _pageWidgets = [
    SignInView(),
    ExampleView(color:Colors.orange, title:'戦績入力とか'),
    ExampleView(color:Colors.blue, title:'アカウント'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pre KC Cup App'),
      ),
      body: _pageWidgets[context.select<PageState, int>((state) => state.currentIndex)],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.whatshot), title: Text('大会情報')),
          BottomNavigationBarItem(icon: Icon(Icons.account_box), title: Text('アカウント')),
        ],
        currentIndex: context.select<PageState, int>((state) => state.currentIndex),
        onTap: (index) => context.read<ViewController>().onItemTapped(index),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
