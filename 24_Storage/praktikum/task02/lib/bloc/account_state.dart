part of 'account_bloc.dart';

abstract class AccountState extends Equatable {
  final List<Account> items;
  const AccountState(this.items);

  @override
  List<Object> get props => [items];
}

class AccountInitial extends AccountState {
  AccountInitial(super.items);
}
