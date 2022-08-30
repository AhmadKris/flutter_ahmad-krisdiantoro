import 'dart:io';

/*void main() {
  int i, hasil = 1;

  stdout.write("Masukkan Angka : ");
  int a = int.parse(stdin.readLineSync()!);

  for (i = 1; i <= a; i++) {
    hasil = i * hasil;
  }
  print("Hasil Faktorial dari $a Adalah $hasil");
}*/

void main() {
  int i, hasil = 1;

  stdout.write("Masukkan Angka : ");
  int a = int.parse(stdin.readLineSync()!);

  for (i = 1; i <= a; i++) {
    print(i);
  }
}
