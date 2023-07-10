class Carro {

  String? nomeCarro;
  int velocidadeMaxima = 0;
  int _velocidadeAtual = 0;

  Carro([this.nomeCarro, this.velocidadeMaxima = 280]);

  int get velocidadeAtual {
    return this._velocidadeAtual;
  }

  int acelerar() {
    if(_velocidadeAtual + 5 >= velocidadeMaxima){
      _velocidadeAtual = velocidadeMaxima;
    }else{
      _velocidadeAtual += 5;
    }
    return _velocidadeAtual;
  }

  int freiar() {
    if(_velocidadeAtual -5 <= 0){
      _velocidadeAtual = 0;
    } else{
      _velocidadeAtual -= 5;
    }
    return _velocidadeAtual;
  }

  bool estaNoLimite(){
    return _velocidadeAtual == velocidadeMaxima; 
  }
}