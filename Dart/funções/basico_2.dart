import 'dart:math';

main() {
  int resultado = somar(2, 3);
  resultado *= 2;

  print(resultado);

  print("O resultado é ${somarNumerosAleatorios()}");
}

int somar(int a, int b){
  return a + b;
  //return 'teste' -> não pode pois a função foi definida como inteiro
}

int somarNumerosAleatorios() {
  int a = Random().nextInt(11);
  int b = Random().nextInt(11);
  return a + b;
}