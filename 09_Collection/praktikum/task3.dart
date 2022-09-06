import 'dart:io';

void main() {
  var matrix = [];
  var total = 0;
  var rata;

  for (var i = 0; i < 5; i++) {
    stdout.write("Masukkan Angka Pada Indeks [${i + 1}] : ");
    var input = stdin.readLineSync();
    matrix.add(input);
  }
  for (var i = 0; i < 5; i++) {
    total += int.parse(matrix[i]);
  }
  rata = total / 5;
  print("Nilai rata-rata $total / 5 = $rata");
}
