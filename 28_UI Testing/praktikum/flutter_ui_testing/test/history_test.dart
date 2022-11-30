import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ui_testing/views/history.dart';

void main() {
  testWidgets('History Test', (WidgetTester test) async {
    await test.pumpWidget(const MaterialApp(
      home: History(),
    ));

    expect(find.text('History'), findsOneWidget);

    // test pada widget yang belum ada
    expect(find.byWidget(ListView()), findsNothing);
  });
}
