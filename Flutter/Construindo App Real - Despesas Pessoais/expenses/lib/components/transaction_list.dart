import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../models/transaction.dart';
import 'Transaction_item.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final void Function(String) onRemove;

  TransactionList(this.transactions, this.onRemove);

  @override
  Widget build(BuildContext context) {
    return transactions.isEmpty
        ? LayoutBuilder(
            builder: (context, constraints) {
              return Column(
                //Se não houver elementos em transactions -> mostra a imagem
                children: [
                  const SizedBox(height: 20), //Espaçamento
                  Text(
                    'Nenhuma Transação Cadastrada',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: constraints.maxHeight * 0.6,
                    child: Image.asset(
                      'assets/images/waiting.png',
                      fit: BoxFit
                          .cover, //Consegue ajustar a imagem quando o pai tem altura definida(Container)
                    ),
                  ),
                ],
              );
            },
          )
        : ListView.builder(
            itemCount: transactions.length,
            itemBuilder: (ctx, index) {
              final tr = transactions[index];
              return TransactionItem(
                key: GlobalObjectKey(tr.id),
                tr: tr,
                onRemove: onRemove,
              );
            });

    // ListView(
    //   children: transactions.map((tr) {
    //     return TransactionItem(
    //       key: ValueKey(tr.id), //ValueKey -> Chave Local onde pega o id único de cada Transação
    //       tr: tr,
    //       onRemove: onRemove,
    //     );
    //   }).toList(),
    // );
  }
}
