import 'package:flutter/foundation.dart';
import 'package:task02/model/contact.dart';

class ContactProvider with ChangeNotifier {
  final List<Contact> _contacts = [
    Contact(nama: 'Ahmad', nomor: '01234567890', email: 'ahmad@gmail.com')
  ];

  List<Contact> get contacts => [..._contacts];

  void tambah(Contact contact) {
    _contacts.add(contact);
    notifyListeners();
  }

  void hapus(String id) {
    final targetIndex = _contacts.indexWhere((element) => element.id == id);
    if (targetIndex != -1) {
      _contacts.removeAt(targetIndex);
      notifyListeners();
    }
  }
}
