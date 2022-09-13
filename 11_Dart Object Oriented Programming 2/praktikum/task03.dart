class Matematika {
  hasil() {}
}

class KelipatanPersekutuanTerkecil implements Matematika {
  var x;
  var y;
  KelipatanPersekutuanTerkecil(this.x, this.y);
  @override
  hasil() {
    var fpb = 0;
    for (var a = 1; a <= x; a++) {
      var b = x % a;
      var c = y % a;
      if (b == c && c == 0) {
        fpb = a;
      }
    }
    var kpk = (x * y) / fpb;

    return ("Kelipatan Persekutuan Terkecil dari $x dan $y : $kpk");
  }
}

class FaktorPersekutuanTerbesar implements Matematika {
  var x;
  var y;
  FaktorPersekutuanTerbesar(this.x, this.y);
  @override
  hasil() {
    var fpb = 0;
    for (var a = 1; a <= x; a++) {
      var b = x % a;
      var c = y % a;
      if (b == c && c == 0) {
        fpb = a;
      }
    }
    return ("Faktor Persekutuan Terbesar dari $x dan $y : $fpb");
  }
}
