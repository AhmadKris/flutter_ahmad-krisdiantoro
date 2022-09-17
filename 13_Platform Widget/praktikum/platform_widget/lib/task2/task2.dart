import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './list_view_chats.dart';
import './list_view_settings.dart';
import './list_view_calls.dart';
import './list_view_contacts.dart';
// import 'package:cupertino_listview/cupertino_listview.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData.raw(
          Brightness.light, null, null, null, null, null),
      home: App(),
    );
  }
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text(
          "Chats",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        leading: Padding(
            padding: EdgeInsets.only(top: 8),
            child: Text(
              'Edit',
              style: TextStyle(color: Colors.blue),
            )),
        trailing: Icon(CupertinoIcons.add),
      ),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.contacts),
              label: "Contacts",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: "Calls",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: "Chats",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          late final CupertinoTabView returnValue;
          switch (index) {
            case 0:
              returnValue = CupertinoTabView(builder: (context) {
                return const CupertinoPageScaffold(
                  child: ListViewContacts(),
                );
              });
              break;
            case 1:
              returnValue = CupertinoTabView(builder: (context) {
                return const CupertinoPageScaffold(
                  child: ListViewCalls(),
                );
              });
              break;
            case 2:
              returnValue = CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(
                  child: ListViewChats(dataChat),
                );
              });
              break;
            case 3:
              returnValue = CupertinoTabView(builder: (context) {
                return const CupertinoPageScaffold(
                  child: ListViewSettings(),
                );
              });
              break;
          }
          return returnValue;
        },
      ),
    );
  }
}
