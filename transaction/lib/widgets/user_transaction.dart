import 'package:flutter/material.dart';
import 'package:flutter_demo/models/transaction.dart';
import 'package:flutter_demo/widgets/new_transaction.dart';
import 'package:flutter_demo/widgets/transaction_list.dart';

class UserTransactions extends StatefulWidget {
  //UserTransactions({Key? key}) : super(key: key);

  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  // List<Transaction> _userTransactions = [
  //   Transaction(
  //     id: 't1',
  //     title: 'New Shoes',
  //     amount: 69.99,
  //     date: DateTime.now(),
  //   ),
  //   Transaction(
  //     id: 't2',
  //     title: 'weekly grociery',
  //     amount: 15.40,
  //     date: DateTime.now(),
  //   ),
  // ];

  // void _addNewTransaction(String txTitle, double txAmount) {
  //   final newTx = Transaction(
  //     title: txTitle,
  //     amount: txAmount,
  //     date: DateTime.now(),
  //     id: DateTime.now().toString(),
  //   );
  //   setState(() {
  //     _userTransactions.add(newTx);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //NewTransaction(_addNewTransaction),
        //TransactionList(_userTransactions),
      ],
    );
  }
}
