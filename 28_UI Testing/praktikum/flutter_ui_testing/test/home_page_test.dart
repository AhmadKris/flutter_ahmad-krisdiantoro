import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ui_testing/views/home_page.dart';

void main() {
  testWidgets('Home Page Test', (WidgetTester test) async {
    await test.pumpWidget(const MaterialApp(
      home: HomePage(),
    ));

    expect(find.text('Contacts'), findsOneWidget);

    expect(find.byIcon(Icons.person_add), findsOneWidget);

    find.byWidget(
      Container(
          padding: const EdgeInsets.all(5),
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return const ListTile(
                leading: CircleAvatar(),
                title: Text('Nama'),
                subtitle: Text('Nomor'),
              );
            },
          )),
    );

    find.byWidget(
      Column(
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.person_add),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.history),
          )
        ],
      ),
    );
  });
}
