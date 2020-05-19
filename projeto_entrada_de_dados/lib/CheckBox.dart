import 'package:flutter/material.dart';

class ExemploCheckBox extends StatefulWidget {
  @override
  _ExemploCheckBoxState createState() => _ExemploCheckBoxState();
}

class _ExemploCheckBoxState extends State<ExemploCheckBox> {
  bool _brazilianFood = false;
  bool _americanFood = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBox")
      ),
      body: Container(
        child: Column(
          children: <Widget>[


              CheckboxListTile(
                title: Text("Braziliam food"),
                subtitle: Text("cumidinha boa rapaiz",),
                secondary: Icon(Icons.fastfood,color: Colors.green,),
                activeColor: Colors.green,

                //selected: true,
                value: _brazilianFood,
                onChanged: (bool valor){
                    setState(() {
                      _brazilianFood = valor;
                    });
                }),
                CheckboxListTile(
                title: Text("Americam food"),
                subtitle: Text("cumidinha boa rapaiz",),
                secondary: Icon(Icons.fastfood,color: Colors.green,),
                activeColor: Colors.green,

                //selected: true,
                value: _americanFood,
                onChanged: (bool valor){
                    setState(() {
                      _americanFood = valor;
                    });
                }),
                RaisedButton(child: Text("Salvar"),onPressed: (){print("Comida br " + _brazilianFood.toString() + "-- american food"+ _americanFood.toString()  );},)
                 








            /*
            Text("Comida Brasileira !!"),
            Checkbox(
              value: _taselecionado,
              onChanged: (bool valor){
                setState(() {
                  _taselecionado = valor;
                });
                
              },
            )*/
          ],
        ),
      ),
    );
  }
}