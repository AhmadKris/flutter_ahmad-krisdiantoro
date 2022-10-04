import 'package:uuid/uuid.dart';

class Contact {
  String nama, nomor, email;
  late String id;

  Contact({required this.nama, required this.nomor, required this.email}) {
    id = const Uuid().v1();
  }
}
