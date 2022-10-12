import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:task02/models/account.dart';

part 'account_event.dart';
part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc() : super(AccountInitial([])) {
    on<AddAccount>((event, emit) {
      var accountBaru = [...state.items];
      accountBaru.add(event.account);
      emit(AccountInitial(accountBaru));
    });
  }
}
