import 'package:flutter/material.dart';
import 'resultado.dart';
import './questionario.dart';

void main() => runApp(const PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final List<Map<String, Object>> _perguntas = const [
      {
        'texto' : 'Qual é a sua cor favorita?',
        'respostas': [
          {'texto': 'Preto', 'pontuacao': 10}, 
          {'texto': 'Vermelho', 'pontuacao': 5}, 
          {'texto': 'Azul', 'pontuacao': 8}, 
          {'texto': 'Roxo', 'pontuacao': 9},
          ],
      },
      {
        'texto' : 'Qual é o seu animal favorito?',
        'respostas': [
          {'texto': 'Gato', 'pontuacao': 5}, 
          {'texto': 'Cachorro',  'pontuacao': 6},
          {'texto': 'Macaco',  'pontuacao': 10},
          {'texto': 'Cobra', 'pontuacao': 2},
          ],
      }, 
      {
        'texto' : 'Qual seu professor favorito?',
        'respostas': [
          {'texto': 'Maria', 'pontuacao': 2}, 
          {'texto': 'João', 'pontuacao': 8}, 
          {'texto': 'Leo', 'pontuacao': 2}, 
          {'texto': 'Pedro', 'pontuacao': 3},
          ],
      }, 
    ];

  void _responder(int pontuacao) {
    if(temPerguntaSelecionada){
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
        // print(_perguntaSelecionada); -> Debugar
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    
    // for(String textoResp in respostas){ 
    //   widgets.add(Resposta(textoResp, _responder));
    // }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: temPerguntaSelecionada 
        ? Questionario(
            perguntas: _perguntas, 
            perguntaSelecionada: _perguntaSelecionada, 
            responder: _responder,
          ) 
        : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
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
