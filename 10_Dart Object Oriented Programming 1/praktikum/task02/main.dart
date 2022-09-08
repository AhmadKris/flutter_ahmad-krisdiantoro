import './hewan.dart';
import './mobil.dart';

void main(List<String> args) {
  var h1 = hewan();
  h1.berat = 300;

  var m = mobil();
  m.muatan.add(h1);
  m.tambahMuatan(200);
  m.totalMuatan();

  m.tambahMuatan(300);
  m.totalMuatan();

  m.tambahMuatan(500);
  m.totalMuatan();
}
