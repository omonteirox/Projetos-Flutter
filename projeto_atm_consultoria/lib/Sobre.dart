import 'package:flutter/material.dart';

class Sobre extends StatefulWidget {
  @override
  _SobreState createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sobre a Empresa !!"),
        backgroundColor: Colors.lightGreen,
      ),
      body: SingleChildScrollView(
        child:Container(
          padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
              Padding(
                padding: EdgeInsets.all(0),
                child: Row(
                  children: <Widget>[
                    Image.asset("images/detalhe_empresa.png"),
                    Text("Sobre a Empresa",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange
                    ),
                    )
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top:10),
              child: Text(
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."
                "eifend nibh nec tristique interdum. Nulla varius risus vitae dui maximus euismod. Nulla sed tincidunt magna."),
              )
          ],
        ),
        ),
      ),
      
    );
  }
}