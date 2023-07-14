import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {

  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;

  Questionario({
    required this.perguntas, 
    required this.perguntaSelecionada,
    required this.responder,
    super.key,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {

    List<Map<String, Object>> respostas = temPerguntaSelecionada 
      ? perguntas[perguntaSelecionada].cast()['respostas'] //cast -> transforma objeto em lista
        as List<Map<String, Object>> 
      : []; 

    return Column(
          children: <Widget> [
            Questao(perguntas[perguntaSelecionada]['texto'].toString()),
            ...respostas
            .map((resp) {
              return Resposta(
                resp['texto'] as String, 
                () => responder(resp['pontuacao'] as int)
              ); //Passando uma função como parametro para que execute e envie a função responder
            })
            .toList(),
          ],
        );
      }
}