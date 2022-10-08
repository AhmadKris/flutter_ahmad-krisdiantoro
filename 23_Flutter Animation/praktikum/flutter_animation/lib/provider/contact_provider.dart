import 'package:flutter/foundation.dart';
import 'package:flutter_animation/models/contact.dart';

class ContactProvider with ChangeNotifier {
  final List<Contact> _contacts = [
    Contact(name: 'Ahmad', number: '08123456789'),
    Contact(name: 'Kris', number: '08123456789'),
    Contact(name: 'Dian', number: '08123456787'),
    Contact(name: 'Toro', number: '08123456786'),
  ];

  List<Contact> get contacts => [..._contacts];

  void tambahContact(Contact contact) {
    _contacts.add(contact);
    notifyListeners();
  }

  void hapusContact(Contact contact) {
    _contacts.remove(contact);
    notifyListeners();
  }
}
