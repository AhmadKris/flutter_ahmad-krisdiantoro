void main() {
  var student = [
    ['001', 'Ahmad', 'Teknik Informatika'],
    ['002', 'Kris', 'Sistem Informasi'],
    ['003', 'Dian', 'Desain Komunikasi Visual'],
    ['004', 'Toro', 'Teknik Informatika'],
  ];

  for (var i = 0; i < 4; i++) {
    Map key = {
      'NIM ': student[i][0],
      'Nama ': student[i][1],
      'Progdi ': student[i][2],
    };
    print("Data Mahasiswa ke-${i + 1} ==> $key\n");
  }
}
