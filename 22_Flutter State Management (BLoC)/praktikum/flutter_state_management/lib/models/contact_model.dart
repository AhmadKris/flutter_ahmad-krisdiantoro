import 'package:uuid/uuid.dart';

class Contact {
  late String id;
  String nama;
  String nomor;

  Contact({required this.nama, required this.nomor}) {
    id = const Uuid().v4();
  }
}
