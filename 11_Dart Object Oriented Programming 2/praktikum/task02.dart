class BangunRuang {
  double panjang, lebar, tinggi;
  BangunRuang(this.panjang, this.lebar, this.tinggi);

  volume() {}
}

class Kubus extends BangunRuang {
  double sisi;
  Kubus(super.panjang, super.lebar, super.tinggi, this.sisi);

  @override
  volume() {
    double hasil = sisi * sisi * sisi;
    return ("Hasil volume Kubus : $hasil");
  }
}

class Balok extends BangunRuang {
  Balok(super.panjang, super.lebar, super.tinggi);
  @override
  volume() {
    double hasil = panjang * lebar * tinggi;
    return ("Hasil Volume Balok : $hasil");
  }
}

void main(List<String> args) {
  List<BangunRuang> bangunRuang = [];
  bangunRuang.add(Kubus(10, 7, 5, 10));
  bangunRuang.add(Balok(10, 7, 5));

  for (var bangun in bangunRuang) {
    print(bangun.volume());
  }
}
