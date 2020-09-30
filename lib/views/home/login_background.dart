import 'package:flutter/material.dart';

import '../common_items/tools/arc_clipper.dart';

class LoginBackground extends StatelessWidget {
  Widget _topHalf(BuildContext context) {
    return Flexible(
      flex: 2,
      child: ClipPath(
        clipper: ArcClipper(),
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
                  Theme.of(context).colorScheme.secondary,
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.onBackground,
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  final _bottomHalf = Flexible(
    flex: 3,
    child: Container(),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[_topHalf(context), _bottomHalf],
    );
  }
}
