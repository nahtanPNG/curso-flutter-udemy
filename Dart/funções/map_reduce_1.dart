main() { 
  var alunos = [
    {'nome': 'Alfredo', 'nota': 9.9},
    {'nome': 'Wilson', 'nota': 9.3},
    {'nome': 'Uelintom', 'nota': 8.7},
    {'nome': 'Ana', 'nota': 3.9},
    {'nome': 'Guilherme', 'nota': 7.5},
    {'nome': 'Ricardo', 'nota': 6.8},
  ];

  String Function(Map) pegarApenasNome = (aluno) => aluno['nome'];
  int Function(String) qtdeDeLetras = (texto) => texto.length;

  var nomes = alunos.map(pegarApenasNome); //Função map serve para mapear um elemento em outro elemento
  var quantidadeDeLetras = nomes.map(qtdeDeLetras);
  
  print(nomes);
  print(quantidadeDeLetras);
}