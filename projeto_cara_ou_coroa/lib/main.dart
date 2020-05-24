import 'dart:math';

import 'package:flutter/material.dart';
import 'package:projeto_cara_ou_coroa/jogo.dart';

void main(){
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: telaHome(),
  ));
}
class telaHome extends StatefulWidget {
  @override
  _telaHomeState createState() => _telaHomeState();
}

class _telaHomeState extends State<telaHome> {
  void _exibirResultado(){

      int valor = Random().nextInt(2);

      if(valor == 0){
        setState(() {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>telaJogo(resultado: 0))); //cara
        });
      }else{
        setState(() {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>telaJogo(resultado: 1))); //coroa
        });
      }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        padding: EdgeInsets.all(10),
        
        child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("images/logo.png"),
            GestureDetector(
                child: Image.asset("images/botao_jogar.png"),
                onTap: _exibirResultado,
            )
            
              
          ],
        ),
      ),
    );
  }
}