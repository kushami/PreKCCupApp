import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:PreKCCupApp/counter/counter.dart';

class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title TEXT'),
      ),
      body: Center(
          child: Column(
            children: <Widget>[
              Text(
                context.select<CounterState, int>((state) => state.count).toString(),
              ),
              FlatButton(
                onPressed: () => context.read<CounterStore>().fetchNum(),
                child: Text('fetchNum'),
              ),
              FlatButton(
                onPressed: () => context.read<CounterStore>().enable(),
                child: Text('enable'),
              ),
              FlatButton(
                onPressed: () => context.read<CounterStore>().disable(),
                child: Text('disable'),
              ),
              Text('Status: ' + context.select<CounterState, bool>((state) => state.isEnabled).toString())
            ],
          )
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.reset_tv),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.upload_file),
            title: Text('Profile'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download_sharp),
            title: Text('hoge'),
          ),
        ],
        onTap: null,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.read<CounterStore>().increment(),
        label: Text('1'),
        icon: Icon(Icons.add),
      ),
    );
  }
}