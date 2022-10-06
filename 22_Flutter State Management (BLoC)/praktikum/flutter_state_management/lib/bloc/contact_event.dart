part of 'contact_bloc.dart';

abstract class ContactEvent extends Equatable {
  final Contact contact;

  const ContactEvent(this.contact);

  @override
  List<Object> get props => [contact];
}

class TambahContact extends ContactEvent {
  const TambahContact(super.contact);
}
