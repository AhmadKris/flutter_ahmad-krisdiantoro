import 'package:flutter/material.dart';
import 'package:cupertino_list_tile/cupertino_list_tile.dart';

class ListViewChats extends StatelessWidget {
  final List<Data> data;
  const ListViewChats(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => CupertinoListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(data[index].gambar),
        ),
        title: Text(data[index].nama),
        subtitle: Text(data[index].pesan),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(data[index].waktu),
            CircleAvatar(
              maxRadius: 10,
              child: Text(data[index].banyak),
            )
          ],
        ),
      ),
      itemCount: data.length,
    );
  }
}

class Data {
  String nama, pesan, gambar, waktu, banyak;

  Data(
      {required this.nama,
      required this.pesan,
      required this.gambar,
      required this.waktu,
      required this.banyak});
}

final dataChat = <Data>[
  Data(
      nama: "Ahmad",
      pesan: "sek",
      gambar: "images/man1.png",
      waktu: "12.33 PM",
      banyak: "10"),
  Data(
      nama: "Kris",
      pesan: "Mabar",
      gambar: "images/ima.png",
      waktu: "12.55 PM",
      banyak: "14"),
  Data(
      nama: "Gustian",
      pesan: "Hooh Tenan",
      gambar: "images/ima2.jpg",
      waktu: "12.34 PM",
      banyak: "3"),
  Data(
      nama: "Ichsan",
      pesan: "Buset",
      gambar: "images/ima3.jpg",
      waktu: "12.20 PM",
      banyak: "12"),
  Data(
      nama: "Ridwan",
      pesan: "Siapp",
      gambar: "images/ima4.png",
      waktu: "12.10 PM",
      banyak: "1"),
  Data(
      nama: "Eko",
      pesan: "Loginn",
      gambar: "images/ima5.jpg",
      waktu: "12.09 PM",
      banyak: "2"),
  Data(
      nama: "Yurino",
      pesan: "Ok",
      gambar: "images/ima6.jpg",
      waktu: "12.01 PM",
      banyak: "2"),
];
