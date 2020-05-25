import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import "dart:async";
import 'dart:convert';

class telaHome extends StatefulWidget {
  @override
  _telaHomeState createState() => _telaHomeState();
}

class _telaHomeState extends State<telaHome> {

  Future<Map> _recuperarPreco() async{

      String url = "https://blockchain.info/ticker";
      http.Response response = await http.get(url);
      return json.decode(response.body);

  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map>(
      future: _recuperarPreco(),
      builder: (context,snapshot){
        String _resultado = "";
          switch(snapshot.connectionState){
              case ConnectionState.none:
              print("deu ruim padrim");
              
              break;
              case ConnectionState.waiting:
              _resultado = "carregando...";
              print("aguardando primo");
              break;
              case ConnectionState.done:
              
              print("deu bom otario");
              if(snapshot.hasError){
                _resultado = "deu ruim padrim";
              }else{
                double valor = snapshot.data["BRL"]["buy"];
                _resultado = valor.toString();
              }
              break;
              case ConnectionState.active:
              print("deu bom ta no active");
              break;
          }
          return Center(
            child: Text(_resultado),
          );
      },

      );
  }
}