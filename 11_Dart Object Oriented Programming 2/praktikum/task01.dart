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
    return ("Hasil Volume Kubus : $hasil");
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
