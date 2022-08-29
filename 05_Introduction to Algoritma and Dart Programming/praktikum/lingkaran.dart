import 'dart:io';

void main() {
  final phi = 22 / 7;
  var hasil;

  stdout.write("Masukkan jari-jari Lingkaran : ");
  int r = int.parse(stdin.readLineSync()!);

  hasil = phi * r * r;
  print("Luas lingkaran adalah = $hasil");
}
