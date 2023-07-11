import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {

   final String texto;
   final void Function() emSelecao;

  Resposta(this.texto, this.emSelecao);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple[300]),
        child: Text(
          texto,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: emSelecao,
      ),
    );
  }
}