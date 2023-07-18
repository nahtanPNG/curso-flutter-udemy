import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: transactions.isEmpty
          ? Column(
              //Se não houver elementos em transactions -> mostra a imagem
              children: [
                SizedBox(height: 20,), //Espaçamento
                Text(
                  'Nenhuma Transação Cadastrada',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height: 20,),
                Container(
                  height: 200,
                  child: Image.asset(
                    'assets/images/waiting.png',
                    fit: BoxFit.cover, //Consegue ajustar a imagem quando o pai tem altura definida(Container)
                  ),
                ),
              ],
            )
          : ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (ctx, index) {
                final tr = transactions[index];
                return Card(
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(
                          //Criando uma borda
                          color: Colors.purple,
                          width: 2,
                        )),
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          'R\$ ${tr.value.toStringAsFixed(2)}', //ToStringAsFixed(numero de casas decimais)
                          style: const TextStyle(
                            //Estilizando o texto
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tr.title,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text(
                              DateFormat('d MMM y')
                                  .format(tr.date), //Formatando a data com INTL
                              style: TextStyle(
                                color: Colors.grey[600],
                              ))
                        ],
                      )
                    ],
                  ),
                );
              }),
    );
  }
}
