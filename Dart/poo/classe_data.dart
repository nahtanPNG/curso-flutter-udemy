class Data { //Nomenclatura -> começa com maiuscula e a cada palavra começa com letra maiuscula
  int? dia;
  int? mes;
  int? ano;

  //Construtor
  // Data(int dia, int mes, int ano) { //Pega o método padrão e atribui valores as suas variaveis 
  //   this.dia = dia; //this -> representa o objeto que está sendo criado (dataAniversario e dataCmpra)
  //   this.mes = mes;
  //   this.ano = ano;
  // }

  //[] -> parametros opcionais
  Data([this.dia = 1, this.mes = 1, this.ano = 1970]); //Construtor que recebe os parametros e automaticamente altera os valores da instancia

  //Construtor nomeado
  Data.com({this.dia = 1, this.mes = 1, this.ano = 1970});
  Data.ultimoDiaDoAno(this.ano) {
    dia = 31;
    mes = 12;
  }

  //Métodos -> comportamento
  String obterDataFormatada(){ //Não precisa receber os atributos como parametros pois o método ja possui as informações
    return "$dia/$mes/$ano" ; //Atributos
  }

  String toString() {
    return obterDataFormatada();
  }
}
main() {
  var dataAniversario = new Data(13, 05, 2005);
  // dataAniversario.dia = 13;
  // dataAniversario.mes = 05;
  // dataAniversario.ano = 2020;

  Data dataCompra = Data(1, 1, 1970);
  dataCompra.dia = 23;
  dataCompra.mes = 12;
  dataCompra.ano = 2021;

  String d1 = dataAniversario.obterDataFormatada();

  print("A data do aniversário é $d1");
  print("A data da compra é ${dataCompra.obterDataFormatada()}");

  print(dataCompra);

  print(new Data());
  print(Data(31));
  print(Data(31, 12));
  print(Data(31, 12, 2021));

  print(Data.com(ano:2022));
  
  var dataFinal = Data.com(dia: 12, mes: 7, ano: 2024);
  print("O Mickey será público em $dataFinal");

  print(Data.ultimoDiaDoAno(2023));
}