import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ui_testing/views/add_person.dart';

void main() {
  testWidgets('Add Person Test', (WidgetTester test) async {
    await test.pumpWidget(const MaterialApp(
      home: AddPerson(),
    ));

    expect(find.text('Create New Contact'), findsOneWidget);
    expect(find.byType(TextFormField), findsWidgets);

    find.byIcon(Icons.person);
    find.byIcon(Icons.phone);

    find.byWidget(Form(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(),
            TextFormField(),
            Container(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Simpan'),
              ),
            )
          ],
        ),
      ),
    ));
  });
}
