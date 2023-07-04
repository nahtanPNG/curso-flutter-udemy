
int Function(int) somaParcial(int a){ //Uma função que retorna uma função que tem como parametro int e retorna um int
  int c = 0;

  return (int b){
    return a + b + c;
  };
}

void main(List<String> args) {
  print(somaParcial(2)(15)); //Os dois parametros

  var somaCom10 = somaParcial(10); //Primeiro parametro (a)

  print(somaCom10(3)); //Segundo parametro (b)
  print(somaCom10(7));
}