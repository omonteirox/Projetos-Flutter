import 'package:flutter/material.dart';
class Clientes extends StatefulWidget {
  @override
  _ClientesState createState() => _ClientesState();
}

class _ClientesState extends State<Clientes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clientes"),
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
                    Image.asset("images/detalhe_cliente.png"),
                    Text("Clientes",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    )
                  ],
                ),
              ),
             Padding(padding: EdgeInsets.only(top:10),
              child: Image.asset("images/cliente1.png"),
              ),
              Text("Pauno cu de quem ta lendo"),
              Padding(padding: EdgeInsets.only(top:10),
              child: Image.asset("images/cliente2.png"),
              ),
              Text("Pauno cu de quem ta lendo2"),
          ],
        ),
        )
        
      )
      
    );
  }
}