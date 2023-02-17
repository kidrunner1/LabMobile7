import 'package:flutter/cupertino.dart';
import 'package:lab7_1/model/transaction.dart';

class TransactionProvider with ChangeNotifier {
  List<Transaction> transactions = [
    Transaction(title: 'กระเป๋า', amount: 100, date: DateTime.now()),
    Transaction(title: 'กระเป๋า', amount: 100, date: DateTime.now()),
    Transaction(title: 'กระเป๋า', amount: 100, date: DateTime.now()),
  ];
  List<Transaction> getTransactions() {
    return transactions;
  }

  void addTransaction(Transaction statement) {
    transactions.add(statement);
    notifyListeners();
  }
}
