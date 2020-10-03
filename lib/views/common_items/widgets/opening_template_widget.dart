import 'package:flutter/material.dart';

class OpeningTemplateWidget extends StatelessWidget {
  final List<Widget> bottomWidgets;

  OpeningTemplateWidget(this.bottomWidgets);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 50.0,
                          backgroundColor: Theme.of(context).canvasColor,
                          child: Icon(
                            Icons.collections_bookmark_sharp,
                            size: 50.0,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30.0),
                        ),
                        Text(
                          'Pre KC Cup App',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: bottomWidgets,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
