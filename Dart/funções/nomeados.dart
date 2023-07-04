main() {
  saudarPessoa(nome: "Nathan", idade:22);
  saudarPessoa(idade: 43, nome: "Maria");

  imprimirData(7);
  imprimirData(7, ano: 2020);
  imprimirData(7, ano: 2020, mes: 5);
}

saudarPessoa({String? nome, int? idade}){
  print("Olá $nome nem parece que você tem $idade anos");
}

imprimirData(int dia, {int ano = 1970, int mes = 1}){
  print('$dia/$mes/$ano');
}