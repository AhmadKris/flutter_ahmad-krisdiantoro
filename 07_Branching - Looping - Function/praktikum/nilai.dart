import 'dart:io';

// void main() {
//   stdout.write("Masukkan Angka : ");
//   double n = double.parse(stdin.readLineSync()!);

//   if (n > 70) {
//     print("Nilai A");
//   } else if (n > 40) {
//     print("Nilai B");
//   } else if (n > 0) {
//     print("Nilai C");
//   } else {
//     print("Nilai Kosong !!!");
//   }
// }

void test(var n) {
  if (n > 70) {
    print("A");
  } else if (n > 40) {
    print("B");
  } else if (n > 0) {
    print("C");
  } else {
    print("Nilai Kosong !!!");
  }
}

void main() {
  // test(80);
  // test(70);
  // test(40);
  // test(0);

  stdout.write("Masukkan Angka : ");
  int nilai = int.parse(stdin.readLineSync()!);

  test(nilai);
}
