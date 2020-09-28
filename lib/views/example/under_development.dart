import 'package:flutter/material.dart';

class UnderDevelopment extends StatelessWidget {
  final title;
  final message;
  final IconData icon;

  UnderDevelopment({
    this.title = 'Coming Soon',
    this.message = 'Under Development',
    this.icon = Icons.face_retouching_natural,
  });

  Widget _bodyData() => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: 100.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  message,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
        title: Text(title),
        primary: true,
        iconTheme: IconThemeData().copyWith(
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
      body: _bodyData(),
    );
  }
}
