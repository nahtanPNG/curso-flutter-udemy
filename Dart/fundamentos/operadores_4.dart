import 'dart:io';

main(){
  
  bool estaChovendo = stdin.readLineSync() == "s";
  
  stdout.write("Está frio? (s/N)");
  bool estaFrio = stdin.readLineSync() == "s";

  String resultado = estaChovendo || estaFrio ? "Ficar em casa" : "Sair!!!";
  print(resultado);
}