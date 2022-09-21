import 'package:flutter/material.dart';
import 'package:flutter_layout/list.dart';

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: ((context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            child: Text(
              data[index].nama[0],
            ),
          ),
          title: Text(data[index].nama),
          subtitle: Text(data[index].isi),
        );
      }),
      itemCount: data.length,
    );
  }
}

final data = <ListData>[
  ListData(nama: 'Ahmad', isi: '028349201'),
  ListData(nama: 'Kris', isi: '043645761'),
  ListData(nama: 'Dian', isi: '032472369'),
  ListData(nama: 'Toro', isi: '0283624425'),
  ListData(nama: 'Wann', isi: '0436iuwyr428'),
  ListData(nama: 'REKT', isi: '987243825324926492'),
  ListData(nama: 'Oura', isi: '9374934593759'),
  ListData(nama: 'Luminaire', isi: '95873403926492'),
  ListData(nama: 'Donkey', isi: '132901480274'),
];
