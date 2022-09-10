class Hewan {
  String? nama;
  String? jenis;

  void suara() {
    print("...");
  }
}

class Kucing extends Hewan {
  Kucing() {
    nama = 'Kucing';
    jenis = '?';
  }

  @override
  void suara() {
    print("Ngeong");
  }

  void lari() {
    print("Berlari");
  }
}

class Unggas extends Hewan {
  String? keluarga;
  Unggas() {
    nama = 'unggas';
    jenis = 'unggas';
    keluarga = 'gak tau';
  }

  @override
  void suara() {
    print("ngak tau");
  }
}

class Burung extends Unggas {
  Burung() {
    nama = 'Burung Apa Yak';
    jenis = 'Jenis Burung Terbang :v';
    keluarga = 'Keluarga Burung';
  }
  @override
  void suara() {
    print("Cuit - Cuit :v");
  }

  void Terbang() {
    print("Terbang - Terbang");
  }
}
