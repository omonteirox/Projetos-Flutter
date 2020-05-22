import 'package:flutter/material.dart';

class CampoSlider extends StatefulWidget {
  @override
  _CampoSliderState createState() => _CampoSliderState();
}

class _CampoSliderState extends State<CampoSlider> {
  double valor = 0;
  String label = "Valor selecionado";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: <Widget>[
            Slider(
              min: 0.00,
              max: 200.00,
              divisions: 200,
              label: label,
              value: valor,
              
             onChanged: (double newvalor){
               setState(() {
                 valor = newvalor;
                 label = "Valor Selecionado -> " + newvalor.toString();
               });
               
             }
             ),
            RaisedButton(
              child: Text("Salvar"),
              color: Colors.blueAccent,
              onPressed: (){
                  setState(() {
                    print("Valor selecionado -> " + valor.toString());
                  });
              })
          ],
      ),
      ),
    );
  }
}