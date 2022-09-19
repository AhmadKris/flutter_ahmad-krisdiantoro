import 'dart:io';

void main() {
  print("======Menu=====");
  print("1. Nilai");
  print("2. Faktorial");
  print("3. Exit");
  stdout.write("Pilih : ");
  var pilih = stdin.readLineSync();

  switch (pilih) {
    case '1':
      {
        nilai();
        break;
      }
    case '2':
      {
        faktorial();
        break;
      }
    case '3':
      {
        exit(0);
      }
    default:
      print("Pilihan Salah!\n");
      main();
      break;
  }
}

void nilai() {
  var ulang;

  print("");
  stdout.write("Masukkan Angka : ");
  double n = double.parse(stdin.readLineSync()!);

  if (n > 70) {
    print("Nilai A");
  } else if (n > 40) {
    print("Nilai B");
  } else if (n > 0) {
    print("Nilai C");
  } else {
    print("Nilai Kosong !!!");
  }

  print("");
  stdout.write("Lagi ? y/n : ");
  ulang = stdin.readLineSync()!;
  if (ulang == 'y') {
    nilai();
  } else {
    main();
  }
}

void faktorial() {
  var ulang;

  double i, hasil = 1;
  print("");
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

  print("");
  stdout.write("Lagi ? y/n : ");
  ulang = stdin.readLineSync()!;
  if (ulang == 'y') {
    faktorial();
  } else {
    main();
  }
}
