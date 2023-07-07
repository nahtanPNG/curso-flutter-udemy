import '../modelo/carro.dart';

main() {
  var fusca = new Carro("Fuscão Preto", 380);

  while(!fusca.estaNoLimite()){
    fusca.acelerar();
    print("O ${fusca.nomeCarro} está acelerando e sua velocidade atual é ${fusca.velocidadeAtual} KM/H");
  }

  while(fusca.velocidadeAtual > 0){
    fusca.freiar();
    print("O ${fusca.nomeCarro} está freiando e sua velocidade atual é ${fusca.velocidadeAtual} KM/H");
  }
  print("${fusca.nomeCarro} parou!");
}