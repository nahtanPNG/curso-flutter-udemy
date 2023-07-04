/*
  - List
  - Set
  - Map
*/

void main() {

  //List (Aceita repetição, valores homogênios)
  var aprovados = ['Ana', 'Carlos', 'Daniel', 'Leonardo'];
  aprovados.add('Daniel');
  // ignore: unnecessary_type_check
  print(aprovados is List);
  print(aprovados);
  print(aprovados.elementAt(2));
  print(aprovados[0]);
  print(aprovados.length);


  //Map (chave NÃO ACEITA REPETIÇÃO:valor ACEITA REPETIÇÃO)
  var telefones = {
    'João': '+55 (11) 98765-4321',
    'Maria': '+55 (21) 12345-6789',
    'Pedro': '+55 (85) 45455-8989',
  };

  // ignore: unnecessary_type_check
  print(telefones is Map);
  print(telefones);
  print(telefones['João']);
  print(telefones.length);
  print(telefones.values);
  print(telefones.keys);
  print(telefones.entries);

  //Set - conjunto (Não aceita repetição, estrutura não indexados)
  var times = {'Furia', 'Pain', 'Loud', 'Imperial'};
  // ignore: unnecessary_type_check
  print(times is Set);
  times.add('Liquid');
  print(times.length);
  print(times.contains('Furia'));
  print(times.first);
  print(times.last);
}