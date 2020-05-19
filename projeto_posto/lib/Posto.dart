import 'package:flutter/material.dart';

class Posto extends StatefulWidget {
  @override
  _PostoState createState() => _PostoState();
}

class _PostoState extends State<Posto> {

  TextEditingController _controllerGasolina = TextEditingController();
  TextEditingController _controllerAlcool = TextEditingController();
  String _textoResultado = "";

  void _calcular(){
      double precoGasolina = double.tryParse(_controllerGasolina.text);
      double precoAlcool = double.tryParse(_controllerAlcool.text);
      if(precoAlcool == null || precoGasolina == null){
      setState(() {
        _textoResultado = "Número inválido, digite números maiores que 0 e utilize o . no lugar dá ,";
      });
      }else{
        setState(() {
          if(precoAlcool / precoGasolina >= 0.7){
            setState(() {
              _textoResultado = "Melhor abastecer c gasolina";
              _limparCampos();
            });
          }else{
            setState(() {
              _textoResultado = "Melhor abastecer c alcool";
              _limparCampos();
            });
          }
          


        });
      }
  }
  void _limparCampos(){
    _controllerGasolina.text = "";
    _controllerAlcool.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Álcool ou Gasolina ?",
          style: TextStyle(
            fontSize: 15,
          ),
          ),
      ) ,
      body: Container(
        
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 32) ,
              child: Image.asset("images/logo.png"),
            ),
            Padding(
              padding: EdgeInsets.only(bottom:10),
              child: Text(
                "Saiba qual melhor opção para abastecer seu carro !!!",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Valor da Gasolina -> 3.15",
              ),
              style: TextStyle(
                fontSize: 15
              ),
              controller: _controllerGasolina,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Valor do Álcool -> 1.59"
              ),
              style: TextStyle(
                fontSize: 15
              ),
              controller: _controllerAlcool,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: RaisedButton(
                color: Colors.lightBlue,
                textColor: Colors.white,
                padding: EdgeInsets.all(15),
                child: Text("Calcular"),
                onPressed: _calcular,
                
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 15),
              child: Text(_textoResultado,style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),textAlign: TextAlign.center,),
            )
          ],
        )
        ),
      ),
      
    );
  }
}