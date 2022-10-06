import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_state_management/models/contact_model.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(const ContactInitial([])) {
    on<TambahContact>((event, emit) {
      var contactBaru = [...state.items];
      contactBaru.add(event.contact);
      emit(ContactInitial(contactBaru));
    });
  }
}
