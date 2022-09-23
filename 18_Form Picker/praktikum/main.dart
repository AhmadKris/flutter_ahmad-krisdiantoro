class hewan {
  var berat = 50;
}

class mobil {
  var kapasitas = 100;
  var muatan = 30;

  void tambahMuatan(var tambah) {
    if (kapasitas <= 100) {
      tambah = tambah + muatan;
    }
  }
}

void main() {
  var h1 = hewan();
  print(h1.berat);

  var m1 = mobil();
  print(m1.kapasitas);
  print(m1.muatan);
  print(m1.tambahMuatan);
}
