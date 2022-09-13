class Manusia {
  var nik;
  var nama;
  var alamat;

  Manusia(this.nik, this.nama, this.alamat) {}

  void Belajar() {}
}

class Dosen extends Manusia {
  var nidn;
  var jabatanFungsional;
  var pangkat;

  Dosen(super.nik, super.nama, super.alamat, this.nidn, this.jabatanFungsional,
      this.pangkat) {
    print("Nama : $nama");
    print("NIDN : $nidn ");
    print("NIK : $nik");
    print("Alamat : $alamat");
    print("Jabatan Fungsional : $jabatanFungsional");
    print("Pangkat : $pangkat");
  }

  @override
  void Belajar() {
    print("Dosen $nama Mengajar Coding");
  }

  void JadwalMengajar() {
    print("$nama Jadwal mengajar anda : Senin, Selasa , Jumat\n");
  }
}

class Mahasiswa extends Manusia {
  var nim;
  var progdi;

  Mahasiswa(super.nik, super.nama, super.alamat, this.nim, this.progdi) {
    print("Nama : $nama");
    print("NIK : $nik");
    print("NIM : $nim");
    print("Alamat : $alamat");
    print("Progdi : $progdi");
  }

  @override
  void Belajar() {
    print("$nama Belajar Coding");
  }

  void IPK() {
    print("$nama, IPK anda 3.5\n");
  }

  void JadwalKuliah() {
    print("$nama, Jadwal anda : Senin, Kamis");
  }
}

void main(List<String> args) {
  List<Manusia> data = [];

  var dsn =
      Dosen(1111, 'Kris', 'Salatiga', 11111, 'Ketua Progdi TI', 'Menegah');
  dsn.Belajar();
  dsn.JadwalMengajar();

  var mhs = Mahasiswa(
      1112, 'Ahmad Krisdiantoro', 'Temanggung', 11112, 'Teknik Informatika');
  mhs.Belajar();
  mhs.JadwalKuliah();
  mhs.IPK();

  for (var obj in data) {
    print(obj);
  }
}
