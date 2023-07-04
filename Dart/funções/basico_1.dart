import 'dart:math';

main() {

  somaComPrint(2, 3);

  int c = 4;
  int d = 5;

  somaComPrint(c, d);
  somaDoisNumerosAleatorios();
}

void somaComPrint(int a, int b) { //void -> função recebe seus parâmetros e no final retorna nada
  print(a + b);
}

void somaDoisNumerosAleatorios() {
  int n1 = Random().nextInt(11);
  int n2 = Random().nextInt(11);
  print('Os valores sorteados foram $n1 e $n2 ');
  print(n1 + n2);
}