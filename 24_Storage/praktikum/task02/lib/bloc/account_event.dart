part of 'account_bloc.dart';

abstract class AccountEvent extends Equatable {
  final Account account;
  const AccountEvent(this.account);

  @override
  List<Object> get props => [account];
}

class AddAccount extends AccountEvent {
  AddAccount(super.account);
}
