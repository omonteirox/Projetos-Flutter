import 'package:flutter/material.dart';

class CampoSw extends StatefulWidget {
  @override
  _CampoSwState createState() => _CampoSwState();
}

class _CampoSwState extends State<CampoSw> {
  bool _valorSwGay = false;
  bool _valorSwHetero = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CampoSwitch"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            
            SwitchListTile(
              title: Text("Você é gay ?"),
              value: _valorSwGay,
              onChanged: (bool value){
                  setState(() {
                    _valorSwGay = value;
                  });
              }
              ),
              SwitchListTile(
              title: Text("Você é Homem ? ?"),
              value: _valorSwHetero,
              onChanged:  (bool value){
                  setState(() {
                    _valorSwHetero = value;
                  });
              }
              ),
              RaisedButton(
                child: Text("Magic"),
                onPressed: (){
                  setState(() {
                    print("vc escolheu -> " + _valorSwGay.toString());
                  });
                }
                )
            // Text("Ser notificado ?"),
            // Switch(
            //   value: _valorSw, // true or false ?
            //  onChanged: (bool valor){
            //    setState(() {
            //      _valorSw = valor;
            //    });
            //  }),
             
          ],
        ),
      ),
      
    );
  }
}