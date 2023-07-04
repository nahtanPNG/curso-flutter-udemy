import 'dart:math';

void executar({required Function fnPar, required Function fnImpar}){
  var numSorteado = Random().nextInt(10);
  print('Valor sorteado foi $numSorteado');
  numSorteado % 2 == 0 ? fnPar() : fnImpar();
}

void main() {
  var minhaFnPar = () => print('O valo é par!');
  var minhaFnImpar = () => print('O valo é impar!');

  executar(fnPar: minhaFnPar, fnImpar: minhaFnImpar);
}