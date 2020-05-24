import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _controlarcep = TextEditingController();
  String _resultado ;
  void _recuperarCep() async{
     String _cepResultado = _controlarcep.text;
    String url = "https://viacep.com.br/ws/${_cepResultado}/json/";
    http.Response response;
    response = await http.get(url);
    Map<String,dynamic> retorno = json.decode(response.body);
    String logradouro = retorno["logradouro"];
    String cep = retorno["cep"];
    String bairro = retorno["bairro"];
    String complemento = retorno["complemento"];

    setState(() {
      _resultado = "$logradouro";
    });

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Pegando req json"),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: <Widget>[
            TextField(
              maxLength: 8,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "insira o cep meu padrim"
              ),
              controller: _controlarcep,
            ),
            RaisedButton(child: Text("chamar Metodo"), onPressed: _recuperarCep,),

            Text(_resultado),
          ],
        ),
      ),
    );
  }
}