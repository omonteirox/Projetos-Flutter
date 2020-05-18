import 'dart:math';

import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  var _jokempow = AssetImage("images/padrao.png");
  var _resultado = "";
  void opcaoSelected(String escolhaUser){

    var choices = ["pedra","papel","tesoura"];
    var nr = Random().nextInt(3);
    var choicesApp = choices[nr];
    
    switch (choicesApp) {
      case "pedra":
        setState(() {
          this._jokempow = AssetImage("images/pedra.png");
        });
        break;
        case "papel":
        setState(() {
          this._jokempow = AssetImage("images/papel.png");
        });
        break;
        case "tesoura":
        setState(() {
          this._jokempow = AssetImage("images/tesoura.png");
        });
        break;
      default:
    }
    
    if ((escolhaUser == "pedra" && choicesApp == "tesoura")||
        (escolhaUser == "tesoura" && choicesApp == "papel")||
        (escolhaUser == "papel" && choicesApp == "pedra")

    ){
      setState(() {
        _resultado = "a MAQUINA DEIXO VC GANHA KKKK";
      });
    }else if(
        (choicesApp == "pedra" && escolhaUser == "tesoura")||
        (choicesApp == "tesoura" && escolhaUser == "papel")||
        (choicesApp == "papel" && escolhaUser == "pedra")
    ){
      setState(() {
        _resultado = "burrona perdeu P MAQUINA";
      });
    }else{
      setState(() {
        _resultado = "EMPATO PQ EU QUIS";
      });
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("Jokempo"),) ,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          
        Padding(
          padding: EdgeInsets.only(top:32,bottom:16),
          child: Text("Escolha do App:",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),
        ),
          ),
          Image(image: this._jokempow),
           Padding(
          padding: EdgeInsets.only(top:32,bottom:16),
          child: Text("Escolha sua Bro:",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),
        ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(child: Image.asset("images/pedra.png",height: 100,),onTap:()=> opcaoSelected("pedra") ,),
            GestureDetector(child: Image.asset("images/papel.png",height: 100,),onTap:()=> opcaoSelected("papel")),
            GestureDetector(child: Image.asset("images/tesoura.png",height: 100,),onTap:()=> opcaoSelected("tesoura")),
            
          ],),
          Padding(
          padding: EdgeInsets.only(top:32,bottom:16),
          child: Text(this._resultado,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),
        ),
          )
          
          
        ],)
    );
  }
}