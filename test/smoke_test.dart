import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

import 'package:PreKCCupApp/main.dart';

void main() {
  testWidgets('App Smoke Test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    
    expect(find.text('Home Page'), findsOneWidget);
    expect(find.text('(>_<)'), findsNothing);

    await tester.pumpAndSettle();

    await tester.tap(find.byIcon(Icons.whatshot));
    await tester.pump();

    expect(find.text('戦績入力とか'), findsOneWidget);
    expect(find.text('Home Page'), findsNothing);
  });
}
