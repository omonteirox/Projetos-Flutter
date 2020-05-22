import 'package:flutter/material.dart';

class telaSecundaria extends StatefulWidget {
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
            Text("VOCÊ ESTÁ NA TELA SECUNDÁRIA !!! "),
            
          ],
        ),
      ),
      
    );
  }
}