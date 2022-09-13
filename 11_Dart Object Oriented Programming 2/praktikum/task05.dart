class Hewan {
  String? nama, jenis;

  Hewan(this.nama, this.jenis);

  void Suara() {}
}

class Kucing extends Hewan {
  Kucing(super.nama, super.jenis) {
    print("Nama Kucing : $nama");
    print("Jenis Kucing : $jenis");
  }

  @override
  void Suara() {
    print("$nama Bersuara");
  }

  void Lari() {
    print("$nama Berlari");
  }
}

class Unggas extends Hewan {
  String? keluarga;
  Unggas(super.nama, super.jenis, this.keluarga) {
    print("Nama Unggas : $nama");
    print("Jenis Unggas : $jenis");
    print("Keluarga Unggas : $keluarga");
  }

  @override
  void Suara() {
    print("$nama Bisa Bersuara");
  }
}

class Burung extends Unggas {
  Burung(super.nama, super.jenis, super.keluarga) {}
  @override
  void Suara() {
    print("$nama Burung Yang Bisa Bersuara");
  }

  void Terbang() {
    print("$nama Terbang Bebas");
  }
}

void main(List<String> args) {
  List<Hewan> data = [];
  var kucing = Kucing('Kuro', 'Ragdoll');
  kucing.Suara();
  kucing.Lari();
  print("=====================");
  var unggas = Unggas('Ayam', 'Kampung', 'Biasa');
  unggas.Suara();
  print("=====================");
  var burung = Burung('Shiro', 'Burung', 'Unggas');
  burung.Suara();
  burung.Terbang();
  print("=====================");

  for (var obj in data) {
    print(obj);
  }
}
