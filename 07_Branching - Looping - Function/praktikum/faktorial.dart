import 'dart:io';

void main() {
  double i, hasil = 1;

  stdout.write("Masukkan Angka : ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("$a! = ");
  for (i = 1; i <= a; i++) {
    hasil = i * hasil;

    stdout.write(" $i ");
    if (i != a) {
      stdout.write("*");
    }
  }
  print("");
  print("Hasil Faktorial dari $a Adalah $hasil");
  hasil.toString();
}
