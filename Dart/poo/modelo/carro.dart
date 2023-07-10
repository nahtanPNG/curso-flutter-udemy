class Carro {

  String? nomeCarro;
  final int velocidadeMaxima;
  int _velocidadeAtual = 0; // _ -> o atributo passa a não ser visível fora da classe

  Carro([this.nomeCarro, this.velocidadeMaxima = 280]);

  int get velocidadeAtual { //Método Get -> lê o valor do atributo
    return this._velocidadeAtual;
  }

  void set velocidadeAtual(int novaVelocidade) { //Método Set -> altera o valor do atributo
    bool deltaValido = (_velocidadeAtual - novaVelocidade).abs() <= 5;
    if(deltaValido && novaVelocidade >= 0){
      this._velocidadeAtual = novaVelocidade;
    }
    
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