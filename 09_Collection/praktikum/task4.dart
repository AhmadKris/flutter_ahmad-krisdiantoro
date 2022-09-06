import 'dart:io';

void main() {
  var matrix = [];

  for (var i = 0; i < 5; i++) {
    matrix.add([]);
    for (var j = 0; j < 4; j++) {
      stdout.write("Masukkan Angka ke Baris [${i + 1}] kolom [${j + 1}] : ");
      var input = stdin.readLineSync();
      matrix[i].add(input);
    }
  }

  for (var i = 0; i < 5; i++) {
    var jumlah = 0,
        rata,
        min = int.parse(matrix[i][0]),
        max = int.parse(matrix[i][0]);
    for (var j = 0; j < 4; j++) {
      jumlah += int.parse(matrix[i][j]);

      rata = jumlah / 4;

      if (min > int.parse(matrix[i][j])) {
        min = int.parse(matrix[i][j]);
      }

      if (max < int.parse(matrix[i][j])) {
        max = int.parse(matrix[i][j]);
      }
    }
    print("Jumlah Nilai baris ${i + 1} : $jumlah");
    print("Rata-rata Nilai baris ${i + 1} : $rata");
    print("Nilai Terkecil baris ${i + 1} : $min");
    print("Nilai Terbesar baris ${i + 1} : $max\n");
  }
}
