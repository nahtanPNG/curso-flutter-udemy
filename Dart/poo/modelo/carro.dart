class Carro {

  String? nomeCarro;
  int velocidadeMaxima = 0;
  int velocidadeAtual = 0;

  Carro([this.nomeCarro, this.velocidadeMaxima = 280]);

  int acelerar() {
    if(velocidadeAtual + 5 >= velocidadeMaxima){
      velocidadeAtual = velocidadeMaxima;
    }else{
      velocidadeAtual += 5;
    }
    return velocidadeAtual;
  }

  int freiar() {
    if(velocidadeAtual -5 <= 0){
      velocidadeAtual = 0;
    } else{
      velocidadeAtual -= 5;
    }
    return velocidadeAtual;
  }

  bool estaNoLimite(){
    return velocidadeAtual == velocidadeMaxima; 
  }
}