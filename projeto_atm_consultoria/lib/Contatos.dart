import 'package:flutter/material.dart';
class Contatos extends StatefulWidget {
  @override
  _ContatosState createState() => _ContatosState();
}

class _ContatosState extends State<Contatos> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text("Contatos"),
        backgroundColor: Colors.lightGreen,
      ),
      body: SingleChildScrollView(
        child:Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
             Padding(
                padding: EdgeInsets.all(0),
                child: Row(
                  children: <Widget>[
                    Image.asset("images/detalhe_contato.png"),
                    Text("Contato",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    )
                  ],
                ),
              ),
             
              Text("Pauno cu de quem ta lendo"),
              
              Text("Pauno cu de quem ta lendo2"),
          ],
        ),
        )
        
      )
      
    );
  }
}