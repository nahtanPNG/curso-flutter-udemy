 main() {
  
  //Operadorees Aritméticos(binários[precisam de dois operandos]/infix)
  int a = 7;
  int b = 3;
  int resultado = a + b;

  print(resultado);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a % b);
  print(33 % 2);
  print(a + (b * a) - (b / a));

  //Operadores Lógicos
  bool produtoFragil = true;
  bool produtoCaro = false;

  // ignore: dead_code
  print(produtoCaro && produtoFragil); //&& -> AND = E
  print(produtoCaro || produtoFragil); //|| -> OR = OU
  print(produtoCaro ^ produtoFragil); //^ -> XOR = OU Exclusivo(Obrigatoriamente um verdadeiro)
  print(!produtoFragil); //NOT -> Unário/Prefix
  print(!!produtoCaro);
}