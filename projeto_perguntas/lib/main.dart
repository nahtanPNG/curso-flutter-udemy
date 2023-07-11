import 'package:flutter/material.dart';
import 'questao.dart';
import 'resposta.dart';

void main() => runApp(const PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    if(temPerguntaSelecionada){
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  final List<Map<String, Object>> _perguntas = const [
      {
        'texto' : 'Qual é a sua cor favorita?',
        'respostas': ['Preto', 'Vermelho', 'Azul', 'Roxo'],
      },
      {
        'texto' : 'Qual é o seu animal favorito?',
        'respostas': ['Gato', 'Cachorro', 'Macaco', 'Cobra'],
      }, 
      {
        'texto' : 'Qual seu professor favorito?',
        'respostas': ['Maria', 'João', 'Leo', 'Pedro'],
      }, 
    ];

  @override
  Widget build(BuildContext context) {
    

    List<String> respostas = temPerguntaSelecionada 
    ? _perguntas[_perguntaSelecionada].cast()['respostas'] //cast -> transforma objeto em lista
    : []; 

    List<Widget> widgets = respostas
    .map((t) => Resposta(t, _responder)).
    toList();

    // for(String textoResp in respostas){ 
    //   widgets.add(Resposta(textoResp, _responder));
    // }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: temPerguntaSelecionada ?Column(
          children: <Widget> [
            Questao(_perguntas[_perguntaSelecionada]['texto'].toString()),
            ...widgets,
          ],
        ) : null,
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
