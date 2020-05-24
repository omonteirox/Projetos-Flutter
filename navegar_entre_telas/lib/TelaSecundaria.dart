import 'package:flutter/material.dart';

class telaSecundaria extends StatefulWidget {
    int valor = 0;
    telaSecundaria({this.valor});
      @override
  _telaSecundariaState createState() => _telaSecundariaState();
}

class _telaSecundariaState extends State<telaSecundaria> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Secundaria"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text("VOCÊ ESTÁ NA TELA SECUNDÁRIA !!!, \n\n valor passado   "),
            
          ],
        ),
      ),
      
    );
  }
}