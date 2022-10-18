import 'package:uuid/uuid.dart';

class Contact {
  late String id;
  String name;
  String phone;
  String email;

  Contact({required this.name, required this.phone, required this.email}) {
    id = const Uuid().v1();
  }
}
