import 'package:flutter/material.dart';
main() {
  runApp(new PerguntaApp());
}

class PerguntaApp extends StatelessWidget{ //Classe que extende um componente sem estado

  @override
  Widget build(BuildContext context){ //Método build que recebe um contexto
    return MaterialApp(
      home: Scaffold( //Estrutura da aplicação -> array, suporta diversos widgets
        appBar: AppBar(
          title: Text('Perguntas'), // parametro title -> recebe um Widget
        ),
        body: Text('Olá Flutter!!!'),
      ),
    );
  }
}