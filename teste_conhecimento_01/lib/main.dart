import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
  ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Titulo Teste Conhecimento Gustavin"),
      ),
      body: Container(
        child: Column( children: <Widget>[
          Padding(
            
            padding: EdgeInsets.fromLTRB(30, 30, 50, 0),         
              child: TextField(
            decoration: InputDecoration(
                labelText: "Texto !!"
            ),
          ),
          ),
          CheckboxListTile(
            title: Text("Chckbx1"),
            value: false,

          ),
          RaisedButton(
            child: Text("botão"),
          ),
          
        ],

      ),
      ),

    );

    
    
  }
}