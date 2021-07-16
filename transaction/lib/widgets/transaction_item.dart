import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_demo/models/transaction.dart';
import 'package:intl/intl.dart';

class transactionitem extends StatefulWidget {
  const transactionitem({
    Key? key,
    required this.transactions,
    required this.deleteTx,
  }) : super(key: key);

  final Transaction transactions;
  final Function deleteTx;

  @override
  _transactionitemState createState() => _transactionitemState();
}

class _transactionitemState extends State<transactionitem> {
  late Color _bgColor;
  @override
  void initState() {
    const availableColors = [
      Colors.blue,
      Colors.red,
      Colors.black,
      Colors.purple,
    ];
    _bgColor = availableColors[Random().nextInt(4)];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 5,
      ),
      child: ListTile(
        leading: CircleAvatar(
          //backgroundColor: Theme.of(context).primaryColor,
          backgroundColor: _bgColor,
          radius: 30,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: FittedBox(
              child: Text('\$${widget.transactions.amount}'),
            ),
          ),
        ),
        title: Text(
          widget.transactions.title,
          style: Theme.of(context).textTheme.title,
        ),
        subtitle: Text(
          DateFormat.yMMMd().format(widget.transactions.date),
        ),
        trailing: MediaQuery.of(context).size.width > 460
            ? FlatButton.icon(
                onPressed: () => widget.deleteTx(widget.transactions.id),
                label: Text('Delete'),
                icon: Icon(
                  Icons.delete,
                  //textColor: Theme.of(context).errorColor,
                ),
                textColor: Theme.of(context).errorColor,
              )
            : IconButton(
                onPressed: () => widget.deleteTx(widget.transactions.id),
                icon: Icon(
                  Icons.delete,
                  color: Theme.of(context).errorColor,
                ),
              ),
      ),
    );
  }
}
