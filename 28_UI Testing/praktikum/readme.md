# (28) UI Testing

## Data Diri
Nomor Urut &nbsp;: 1_002FLB_44 <br>
Nama &emsp;&emsp;&ensp;&nbsp;: Ahmad Krisdiantoro

## Task 

### Task

1. HomePage Test 
```dart
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
```
2. Add Person Test
```dart 
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
```
3. History Test
```dart
void main() {
  testWidgets('History Test', (WidgetTester test) async {
    await test.pumpWidget(const MaterialApp(
      home: History(),
    ));

    expect(find.text('History'), findsOneWidget);

    //test pada widget yang belum ada
    // expect(find.byWidget(ListView()), findsOneWidget);
  });
}
```
4. Struktur Folder <br>
![mvvm](/28_UI%20Testing/screenshots/mvvm.png)
5. Struktur HomePage<br>
![ss3](/28_UI%20Testing/screenshots/ss3.png)
6. Struktur Add Person<br>
![ss1](/28_UI%20Testing/screenshots/ss1.png)
7. Struktur History<br>
![ss2](/28_UI%20Testing/screenshots/ss2.png)

### Output 
![test](/28_UI%20Testing/screenshots/test.png)
![test1](/28_UI%20Testing/screenshots/test1.png)
![gagal](/28_UI%20Testing/screenshots/gagal.png)


