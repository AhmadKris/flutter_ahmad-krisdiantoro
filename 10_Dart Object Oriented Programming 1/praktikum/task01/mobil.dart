import 'hewan.dart';

class mobil {
  final kapasitas = 1000;
  List<hewan> muatan = [];

  void tambahMuatan(int muatanBaru) {
    var isi = 0;
    for (var i = 0; i < muatan.length; i++) {
      isi += int.parse(muatan[i].berat.toString());
    }
    print("Muatan Sekarang : $isi Kg");
    var sementara = isi + muatanBaru;
    if (sementara <= kapasitas) {
      var m = hewan();
      m.berat = muatanBaru;

      muatan.add(m);
      print("Masih Muat, bisa menambahkan beban sebanyak $muatanBaru Kg\n");
    } else {
      print("Tidak Muat, tidak bisa menambahkan beban sebanyak $muatanBaru Kg");
      print(
          "Anda hanya bisa menambahkan beban maksimal sebanyak ${kapasitas - isi} Kg\n");
    }
  }
}
