import 'package:flutter/material.dart';

class ListChat extends StatelessWidget {
  const ListChat({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(context: context, tiles: [
        const ListTile(
          title: Text('Ahmad'),
          subtitle: Text("Hallo"),
          leading: CircleAvatar(
            backgroundImage: AssetImage("images/ima2.jpg"),
          ),
          trailing: Text("1.30 PM"),
        ),
        ListTile(
          title: const Text('Agus'),
          subtitle: const Text("Wokee"),
          leading: const CircleAvatar(
            backgroundImage: AssetImage("images/ima.png"),
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [Text("12.30 PM"), Icon(Icons.check)],
          ),
        ),
        const ListTile(
          title: Text('Bagas'),
          subtitle: Text("Oke"),
          leading: CircleAvatar(
            backgroundImage: AssetImage("images/ima3.jpg"),
          ),
          trailing: Text("11.43 AM"),
        ),
        const ListTile(
          title: Text('Candra'),
          subtitle: Text("Okok"),
          leading: CircleAvatar(
            backgroundImage: AssetImage("images/ima4.png"),
          ),
          trailing: Text("Yesterday"),
        ),
        const ListTile(
          title: Text('Budi'),
          subtitle: Text("Makasih"),
          leading: CircleAvatar(
            backgroundImage: AssetImage("images/ima5.jpg"),
          ),
          trailing: Text("Yesterday"),
        ),
        const ListTile(
          title: Text('Adit'),
          subtitle: Text("Sip deh"),
          leading: CircleAvatar(
            backgroundImage: AssetImage("images/ima6.jpg"),
          ),
          trailing: Text("Yesterday"),
        ),
        const ListTile(
          title: Text('Gustian'),
          subtitle: Text("Mabar"),
          leading: CircleAvatar(
            backgroundImage: AssetImage("images/man1.png"),
          ),
          trailing: Text("Yesterday"),
        ),
        const ListTile(
          title: Text('Ihsan'),
          subtitle: Text("Gas Mabar"),
          leading: CircleAvatar(
            child: Text("IH"),
          ),
          trailing: Text("Yesterday"),
        ),
        const ListTile(
          title: Text('Ridwan'),
          subtitle: Text("Login"),
          leading: CircleAvatar(
            child: Text("RI"),
          ),
          trailing: Text("Yesterday"),
        ),
        const ListTile(
          title: Text('Eko'),
          subtitle: Text("Gasken"),
          leading: CircleAvatar(
            backgroundImage: AssetImage("images/man1.png"),
          ),
          trailing: Text("Yesterday"),
        ),
      ]).toList(),
    );
  }
}
