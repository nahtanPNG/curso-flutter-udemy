import '../modelo/venda.dart';
import '../modelo/cliente.dart';
import '../modelo/venda_item.dart';
import '../modelo/produto.dart';

main () {
  var venda = Venda(
    cliente: Cliente(
      nome: 'Nathan Ferreira',
      cpf: '123.456.789-10'
    ),
    itens: <VendaItem>[
      VendaItem(
        quantidade: 30,
        produto: Produto(
          codigo: 1,
          nome: 'Caneta Azul',
          preco: 6.00,
          desconto: 0.5
        )
      ),
      VendaItem(
        quantidade: 100,
        produto: Produto(
          codigo: 2,
          nome: 'Borracha',
          preco: 2.00,
          desconto: 0.5
        ),
      ),
      VendaItem(
        quantidade: 20,
        produto: Produto(
          codigo: 5,
          nome: 'Caderno 20 matérias',
          preco: 20.00,
          desconto: 0.25
        ),
      ),
    ]
  );

  print("O valor total de sua venda foi R\$${venda.valorTotal}");
  print("O primeiro item da sua venda é : ${venda.itens?[0].produto?.nome}");
  print("O CPF do cliente é: ${venda.cliente?.cpf}");
}