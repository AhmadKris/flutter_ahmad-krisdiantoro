import 'dart:io';

void main() {
  var isi = [];
  var angka;

  for (var i = 0; i < 4; i++) {
    stdout.write("Masukkan Angka indeks [$i] : ");
    var input = stdin.readLineSync();
    if (input != null) {
      isi.add(int.parse(input));
    } else {
      isi.add('0');
    }
  }
  stdout.write("Masukkan Angka : ");
  angka = int.parse(stdin.readLineSync()!);

  perkalian(isi, angka);
}

perkalian(var lis, var kali) async {
  var hasil;
  var lisBaru = [];

  print("\nList Angka : $lis");
  print("Angka Pengali : $kali\n");

  for (var i = 0; i < 4; i++) {
    hasil = lis[i] * kali;
    lisBaru.add(hasil);
    stdout.write("Hasil dari ${lis[i]} * $kali : $hasil\n");
  }
  print("\nList Hasil Perkalian : $lisBaru");
}
