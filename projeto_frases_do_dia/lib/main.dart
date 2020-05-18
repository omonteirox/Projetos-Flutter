import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
    
  ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "a vida nunca eh plena",
    "vsf quero morre",
    "to trocando a noite pelo dia",
    "vc fede",
  ];
  var _frasegerada = "aperte p gerar uma frase aleatória bro";
  void _gerarFrase(){
      var numeroSorteado = Random().nextInt(_frases.length);
      setState(() {
        _frasegerada = _frases[numeroSorteado];
      });
      
      
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Frases do Dia", textAlign: TextAlign.center,),
      ),body: Center(child: Container(
        /*width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red,style: BorderStyle.solid,width: 3)
        ),*/
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
          Image.asset("images/logo.png",fit: BoxFit.contain),
          Text(_frasegerada, style: TextStyle(color: Colors.black,fontStyle: FontStyle.italic,fontSize: 20),),
          RaisedButton( child: Text(
            "clique p gerar uma frase aleatória cabeção",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold
            ),
            ),color: Colors.lightGreen,onPressed: _gerarFrase,
            )
        ],),
      ),
    )
    );
  }
}
