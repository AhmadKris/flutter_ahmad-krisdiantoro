import 'package:flutter/material.dart';

class Draw extends StatelessWidget {
  const Draw({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          UserAccountsDrawerHeader(
            accountName: Text("Ahmad Krisdiantoro"),
            accountEmail: Text("081234567890"),
            currentAccountPicture: Image(image: AssetImage("images/ima4.png")),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/bg.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.group,
            ),
            title: Text("New Group"),
          ),
          ListTile(
            leading: Icon(
              Icons.lock,
            ),
            title: Text("New Secret Chat"),
          ),
          ListTile(
            leading: Icon(Icons.campaign),
            title: Text("New Channel"),
          ),
          Divider(
            height: 5,
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text("Contacts"),
          ),
          ListTile(
            leading: Icon(Icons.person_add),
            title: Text("Invite Friends"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text("Telegram FAQ"),
          ),
        ],
      ),
    );
  }
}
