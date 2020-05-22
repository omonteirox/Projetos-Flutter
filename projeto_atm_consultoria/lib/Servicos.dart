import 'package:flutter/material.dart';

class Servicos extends StatefulWidget {
  @override
  _ServicosState createState() => _ServicosState();
}

class _ServicosState extends State<Servicos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Serviços Oferecidos"),
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
                    Image.asset("images/detalhe_servico.png"),
                    Text("Serviços Oferecidos",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    )
                  ],
                ),
              ),
             Padding(padding: EdgeInsets.only(top:10),
              child: Text(
                "serviços"),
              )
          ],
        ),
        )
        
      ),
      
    );
  }
}