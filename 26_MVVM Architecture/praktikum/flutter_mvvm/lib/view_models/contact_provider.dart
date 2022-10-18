import 'package:flutter/foundation.dart';
import 'package:flutter_mvvm/models/contact.dart';

class ContactProvider with ChangeNotifier {
  final List<Contact> _contacts = [];

  List<Contact> get contacts => [..._contacts];

  void addContact(Contact contact) {
    _contacts.add(contact);
    notifyListeners();
  }

  void deleteContact(String id) {
    final targetIndex = _contacts.indexWhere((element) => element.id == id);
    if (targetIndex != -1) {
      _contacts.removeAt(targetIndex);

      notifyListeners();
    }
  }
}
