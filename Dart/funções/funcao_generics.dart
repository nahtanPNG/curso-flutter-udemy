Object segundoElementoV1(List lista) { //Object -> cobre todos os tipos (string, int, boolean, function, etc...)
 return lista.length >= 2 ? lista[1] : null; 
}

E? segundoElementoV2<E>(List<E> lista) { // E -> tipo generico que pode ser qualquer coisa, é definido pelo parametro
 return lista.length >= 2 ? lista[1] : null; 
}


main() {
  var lista = [3, 6, 7, 12, 45, 78, 1];
  print(segundoElementoV1(lista));

  int segundoElemento = segundoElementoV2<int>(lista)!;
  print(segundoElemento);
  
  segundoElemento = segundoElementoV2(lista)!; //Não precisa colocar o int novamente pois o E virou Int
  print(segundoElemento);

}