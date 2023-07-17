import 'dart:math';

import 'package:flutter/material.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {

  final _transactions = [
    Transaction(
      id: 't1',
      title: 'God of War Ragnarok Ps4',
      value: 300,
      date: DateTime.now(), //Data de agora
    ),
    Transaction(
      id: 't2',
      title: 'Fone Bluetooth',
      value: 120,
      date: DateTime.now(), //Data de agora
    ),
    Transaction(
      id: 't3',
      title: 'Fone Bluetooth',
      value: 120,
      date: DateTime.now(), //Data de agora
    ),
    Transaction(
      id: 't4',
      title: 'Fone Bluetooth',
      value: 120,
      date: DateTime.now(), //Data de agora
    ),
    Transaction(
      id: 't6',
      title: 'Fone Bluetooth',
      value: 120,
      date: DateTime.now(), //Data de agora
    ),
    Transaction(
      id: 't7',
      title: 'Fone Bluetooth',
      value: 120,
      date: DateTime.now(), //Data de agora
    ),
    Transaction(
      id: 't8',
      title: 'Fone Bluetooth',
      value: 120,
      date: DateTime.now(), //Data de agora
    ),
    Transaction(
      id: 't9',
      title: 'Fone Bluetooth',
      value: 120,
      date: DateTime.now(), //Data de agora
    ),
    Transaction(
      id: 't10',
      title: 'Fone Bluetooth',
      value: 120,
      date: DateTime.now(), //Data de agora
    ),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}