import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  String get fraseResultado{
    if(pontuacao < 8){
      return 'Parabéns!';
    } else if(pontuacao < 12){
      return 'Ótimo gosto!';
    } else if (pontuacao < 16){
      return 'Impressionante!';
    } else {
      return 'Deus?';
    }
  }

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: ,
      children: [
        Center(
          child: 
          Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
      ],
    );
  }
}