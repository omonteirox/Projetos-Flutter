import 'package:flutter/material.dart';

class campoTexto extends StatefulWidget {
  @override
  _campoTextoState createState() => _campoTextoState();
}

class _campoTextoState extends State<campoTexto> {
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(
          "Entrada de Dados Examples",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(children: <Widget>[
         Padding(
           padding: EdgeInsets.all(32),
           child: TextField(
             keyboardType: TextInputType.text,
             decoration: InputDecoration(
               labelText: "DIGITE UM VALOR",
             ),
             //enabled: false,
             //maxLength: 2,
             //maxLengthEnforced: true,
             style: TextStyle(
               fontSize: 20,
               color: Colors.black
             ),
            // obscureText: true, // campo de senha
            /*onChanged: (String e){
              print("valor digitado " + e);
            },*/
            /*onSubmitted: (String e){
              print("valor digitado " + e);
            },*/
            controller: _textEditingController,
           ),
           ),
           RaisedButton(
             child: Text("Salvar dados"),
             color: Colors.green,
             onPressed: (){
                print("valor digitado : " + _textEditingController.text);
             },
           )
      ],
       
      
      ),
      
    );
  }
}