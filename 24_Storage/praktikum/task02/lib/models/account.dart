class Account {
  String nama, nomor, email, password;

  Account(
      {required this.nama,
      required this.nomor,
      required this.email,
      required this.password});

  Account.fromMap(Map map)
      : nama = map['nama'] as String,
        nomor = map['nomor'] as String,
        email = map['email'] as String,
        password = map['password'] as String;

  Map toMap() {
    return {
      'nama': nama,
      'nomor': nomor,
      'email': email,
      'password': password,
    };
  }
}
