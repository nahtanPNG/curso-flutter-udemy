
main(){
  // int a = 3;
  // double b = 3.1;
  // bool estaChovendo = true;
  // bool estaFrio = false;
  // var c = 'Você é muito legal';
  // print(c is String);
  // print(estaChovendo || estaFrio);

  // var nomes = ['Ana', 'Bia', 'Carlos'];
  // nomes.add('Nathan');
  // nomes.add('Nathan');
  // nomes.add('Nathan');
  // print(nomes.length);
  // print(nomes.elementAt(0));
  // print(nomes[5]);

  // Set<int> conjunto = {0, 1, 2, 3, 4, 4, 4, 4, 4};
  // print(conjunto.length);
  // print(conjunto is Set); Verifica se é um conjunto

  dynamic x = 'Teste'; //Variável tipável, pode variar seu tipo
  x = 123;
  x = false;

  Map<String, double> notasDosAlunos = {
    'Ana': 9.7,
    'Bia': 9.2,
    'Carlos': 7.8
  };

  for(var chave in notasDosAlunos.keys) {
    print('chave = $chave');
  }
  
  for(var valor in notasDosAlunos.values) {
    print('valor = $valor');
  }

  for(var registro in notasDosAlunos.entries) {
    print('${registro.key} = ${registro.value}');
  }
  

  var a = 3;
  a = 4;

  final b = 3;
  //b = 6;
              
  const c = 5;
  //c = 5;
}
