import 'package:flutter/material.dart';
import 'package:navegar_entre_telas/TelaSecundaria.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: telaMain(),
  ));
}
class telaMain extends StatefulWidget {
  @override
  _telaMainState createState() => _telaMainState();
}

class _telaMainState extends State<telaMain> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TELA PRIMARIA"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text(
                "Mudar para tela secundária",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),
                ),
                padding: EdgeInsets.all(30),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context)=>telaSecundaria()
                    )
                   );
              }
              )
          ],
        ),
      ),
    );
  }
}