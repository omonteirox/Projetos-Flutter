import 'package:flutter/material.dart';

class projetoRadionButton extends StatefulWidget {
  @override
  _projetoRadionButtonState createState() => _projetoRadionButtonState();
}

class _projetoRadionButtonState extends State<projetoRadionButton> {
  
  String _escolhauser;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Projeto Radio Butão"),
    ),
    body: Container(child: Column(
      children: <Widget>[
          
          RadioListTile(
            title: Text("Masculino"),
            value: "m",
            groupValue: _escolhauser,
            onChanged: (String escolha){
             setState(() {
               _escolhauser = escolha;
             });
             print("result ->" + escolha);
           }),
          RadioListTile(
            title: Text("Feminino"),
            value: "f",
            groupValue: _escolhauser,
            onChanged: (String escolha){
             setState(() {
               _escolhauser = escolha;
             });
             print("result ->" + escolha);
           }),
           RaisedButton(
             child: Text("Conferir"),
             color: Colors.lightGreen,
             onPressed: (){
             print("Resultado ->" + _escolhauser);
           },

           )
          // Text(
          //   "Masculino",
          //   style: TextStyle(
          //     fontSize: 15,
          //     fontWeight: FontWeight.bold

          //   ),
          //   textAlign: TextAlign.center,
          //   ),
          // Radio(
          //   value: "m",
          //  groupValue: _escolhauser, 
          //  onChanged: (String escolha){
          //    setState(() {
          //      _escolhauser = escolha;
          //    });
          //    print("result ->" + escolha);
          //  }),
          //  Text(
          //   "Feminino",
          //   style: TextStyle(
          //     fontSize: 15,
          //     fontWeight: FontWeight.bold

          //   ),
          //   textAlign: TextAlign.center,
          //   ),
          // Radio(
          //   value: "f",
          //  groupValue: _escolhauser, 
          //  onChanged: (String escolha){
          //     setState(() {
          //      _escolhauser = escolha;
          //    });
          //    print("result ->" + escolha);
          //  }),
        
      ],
    ),
    ),
      
    );
  }
}