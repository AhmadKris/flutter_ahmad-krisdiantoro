class BangunRuang {
  double panjang = 10;
  double lebar = 5;
  double tinggi = 7;

  void volume() {}
}

class Kubus extends BangunRuang {
  double sisi = 10;

  @override
  void volume() {
    double hasil = sisi * sisi * sisi;
    print("Volume Kubus : $hasil");
  }
}

class Balok extends BangunRuang {
  @override
  void volume() {
    double hasil = panjang * lebar * tinggi;
    print("Volume Balok : $hasil");
  }
}

void main(List<String> args) {
  var kubus = Kubus();
  var balok = Balok();

  kubus.volume();
  balok.volume();
}
