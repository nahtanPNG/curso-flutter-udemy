int somaFn(int a, int b){
  return a + b;
}

main() {
  // tipo nome_var = valor;
  int Function(int, int) soma1 = somaFn;
  
  print(soma1(2, 3));

  var soma2 = (int x, int y){ //Função anonima -> não tem nome (só faz sentido ser criada quando armazenada na variavel)
    return x+ y;
  };

  print(soma2(2,3));
}

