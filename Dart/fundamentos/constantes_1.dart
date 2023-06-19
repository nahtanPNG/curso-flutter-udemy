
import 'dart:io';

main() {
  // Área da circunferência = PI * raio * raio

  const Pi = 3.1415; //Diferença entre const e final = const é definida para o tempo de compilação e a final no tempo de runtime

  stdout.write("Informe o valor do raio: "); //Escreve sem a quebra de linha
  var entradaDoUsuario = stdin.readLineSync()!; //Imput não funciona no code runner -> terminal
  final double raio = double.parse(entradaDoUsuario); //Final = constante, não altera

  final area = Pi * raio * raio;

  print("O valor da área é: " + area.toString());
}