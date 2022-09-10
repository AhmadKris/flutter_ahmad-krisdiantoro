class Matematika {
  void hasil() {}
}

class KelipatanPersekutuanTerkecil implements Matematika {
  var x = 12;
  var y = 15;

  @override
  void hasil() {
    var fpb = 0;
    for (var a = 1; a <= x; a++) {
      var b = x % a;
      var c = y % a;
      if (b == c && c == 0) {
        fpb = a;
      }
    }
    var kpk = (x * y) / fpb;

    print("Kelipatan Persekutuan Terkecil dari $x dan $y : $kpk");
  }
}

class FaktorPersekutuanTerbesar implements Matematika {
  var x = 12;
  var y = 15;
  @override
  void hasil() {
    var fpb = 0;
    for (var a = 1; a <= x; a++) {
      var b = x % a;
      var c = y % a;
      if (b == c && c == 0) {
        fpb = a;
      }
    }
    print("Faktor Persekutuan Terbesar dari $x dan $y : $fpb");
  }
}

void main(List<String> args) {
  var KPT = KelipatanPersekutuanTerkecil();
  var FPT = FaktorPersekutuanTerbesar();
  KPT.hasil();
  FPT.hasil();
}
