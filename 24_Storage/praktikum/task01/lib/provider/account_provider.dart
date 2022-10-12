import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task01/models/account.dart';
import 'package:task01/provider/shared_helper.dart';

class AccountProvider with ChangeNotifier {
  List<Account> _accounts = [];

  SharedPreferences? sharedPreferences;

  List<Account> get accounts => List.unmodifiable(_accounts);

  void addAccount(Account account) {
    _accounts.add(account);
    savedDataToLocalStorage();
    notifyListeners();
  }

  void initSharedPreference() async {
    await SharedPreferencesHelper.init();
    sharedPreferences = SharedPreferencesHelper.instance;
    loadDataFromLocalStorage();
    notifyListeners();
  }

  void savedDataToLocalStorage() {
    List<String>? spList =
        _accounts.map((item) => json.encode(item.toMap())).toList();
    sharedPreferences!.setStringList('list', spList);
  }

  void loadDataFromLocalStorage() {
    List<String>? spList = sharedPreferences!.getStringList('list');
    if (spList != null) {
      _accounts =
          spList.map((item) => Account.fromMap(json.decode(item))).toList();
    }
  }
}
