import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class telaHome extends StatefulWidget {
  @override
  _telaHomeState createState() => _telaHomeState();
}

class _telaHomeState extends State<telaHome> {

  String _resultado ="" ;
  void _resgatarResultado() async {
    http.Response response ;
    String url = "https://blockchain.info/ticker";
    response = await http.get(url);
    Map<String,dynamic> valores = json.decode(response.body);
    setState(() {
      _resultado = valores["BRL"]["buy"].toString();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
              Image.asset("images/logo.png"),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "R\$ " + _resultado,
                  textAlign: TextAlign.center,
                  ),
                  ),
              
              RaisedButton(onPressed: _resgatarResultado, color: Colors.green,child: Text("Atualizar"),)
          ],
        ),
      ),
    );
  }
}