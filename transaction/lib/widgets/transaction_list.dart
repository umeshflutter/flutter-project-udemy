import 'package:flutter/material.dart';
import 'package:flutter_demo/models/transaction.dart';
import 'package:flutter_demo/widgets/transaction_item.dart';

class TransactionList extends StatelessWidget {
  //TransactionList({Key? key}) : super(key: key);
  final List<Transaction> transactions;
  final Function deleteTx;

  TransactionList(this.transactions, this.deleteTx);

  @override
  Widget build(BuildContext context) {
    print('build() Transaction_list');
    return transactions.isEmpty
        ? LayoutBuilder(builder: (ctx, constraints) {
            return Column(
              children: <Widget>[
                Text(
                  'No Transaction Added',
                  style: Theme.of(context).textTheme.title,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: constraints.maxHeight * 0.6,
                  child: Image.asset(
                    'assets/images/waiting.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            );
          })
        // : ListView.builder(
        //     itemBuilder: (ctx, index) {
        //       return transactionitem(
        //           transactions: transactions[index], deleteTx: deleteTx);
        //     },
        //     itemCount: transactions.length,
        //   );
        : ListView(
            children: transactions
                .map(
                  (tx) => transactionitem(
                    key: ValueKey(tx.id),
                    transactions: tx,
                    deleteTx: deleteTx,
                  ),
                )
                .toList(),
          );
  }
}
