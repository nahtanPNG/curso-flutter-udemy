import 'package:expenses/components/transaction_form.dart';
import 'package:flutter/material.dart';

import 'dart:math';
import '/components/transaction_list.dart';
import '/models/transaction.dart';
import 'components/chart.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData tema = ThemeData();

    return MaterialApp(
      home: MyHomePage(),
      theme: tema.copyWith(
        colorScheme: tema.colorScheme.copyWith(
          primary: Colors.purple,
          secondary: Colors.amber,
        ),
        textTheme: tema.textTheme.copyWith(
          titleLarge: tema.textTheme.titleLarge!.copyWith(
            fontFamily: 'TitilliumWeb',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            fontFamily: 'TitilliumWeb',
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      )
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final List<Transaction> _transactions = [
    Transaction(
      id: 't0',
      title: 'Conta Antiga',
      value: 499.99,
      date: DateTime.now().subtract(Duration(days: 33)), //Data de agora
    ),
    Transaction(
      id: 't1',
      title: 'God of War Ragnarok Ps4',
      value: 300,
      date: DateTime.now().subtract(Duration(days: 3)), //Data de agora
    ),
    Transaction(
      id: 't2',
      title: 'Fone Bluetooth',
      value: 120,
      date: DateTime.now().subtract(Duration(days: 4)), //Data de agora
    ),
  ];

  List<Transaction> get _recentTransactions {
    return _transactions.where((tr) {
      return tr.date.isAfter(DateTime.now().subtract( //Verifica se a data da transação é antes de 7 dias atrás ou não
        Duration(days: 7),
      ));
    }).toList();
  }

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

    Navigator.of(context).pop(); //Fechando o modal
  }

    _openTransactionFormModal(BuildContext context) {
      showModalBottomSheet(
        context: context, 
        builder: (_) {
          return TransactionForm(_addTransaction);
        });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas Pessoais'),
        actions: [
          //Adicionando botão no appbar
          IconButton(
            icon: Icon(Icons.add_box),
            onPressed: () => _openTransactionFormModal(context),
          ),
        ],
      ),
      body: SingleChildScrollView(
        //Permite a rolagem na aplicação
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Chart(_recentTransactions),
            TransactionList(_transactions),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //Botão de modo floating
        child: Icon(Icons.add),
        onPressed: () => _openTransactionFormModal(context),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
