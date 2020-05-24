import 'package:flutter/material.dart';

class telaJogo extends StatefulWidget {
  int resultado = -1;
  telaJogo({this.resultado});
  @override
  _telaJogoState createState() => _telaJogoState();
}

class _telaJogoState extends State<telaJogo> {
    
    

  @override
  Widget build(BuildContext context) {
    var resultadoImg = "images/0.png";
    if(widget.resultado == 0){
      resultadoImg = "images/moeda_cara.png";
    }else{
      resultadoImg = "images/moeda_coroa.png";
    }
    return Scaffold(
       backgroundColor: Color(0xff61bd86),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          
          children: <Widget>[
            Image.asset(resultadoImg),
              GestureDetector(
                child: Image.asset("images/botao_voltar.png"),
                onTap: () => Navigator.pop(context),
            )
          ],
        ),
      ),
    );
  }
}