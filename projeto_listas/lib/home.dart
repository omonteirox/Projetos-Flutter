import 'package:flutter/material.dart';

class telaHome extends StatefulWidget {
  @override
  _telaHomeState createState() => _telaHomeState();
}

class _telaHomeState extends State<telaHome> {
  List _itens = [];
    void _carregarItens(){
      _itens = [];
      for(int i = 0; i<=10;i++){
        Map<String,dynamic> item = Map();
        item["title"] = "Title -> $i";
        item["descricao"] = "Descricao -> $i";
        _itens.add(item);
      }
    }
  @override
  Widget build(BuildContext context) {
    _carregarItens();
    return Scaffold(
      appBar:AppBar(
        title: Text(
          "Listas"
        ),
      ) ,
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: _itens.length,
          itemBuilder: (context, indice){
             return ListTile(
                onTap:(){
                    // print("ação ocorrendo NO ONTAP ${indice}");
                    showDialog(
                      context: context,
                      builder: (context){
                          return AlertDialog(
                            title: Text(_itens[indice]["title"]),
                            titlePadding: EdgeInsets.all(10),
                            content: Text(_itens[indice]["descricao"]),
                            actions: <Widget>[
                              
                              RaisedButton(onPressed: (){
                                print("fui clicado pelo ${indice}");
                                Navigator.pop(context);
                              },
                              child: Text("Sim"),
                              
                              ),
                               RaisedButton(onPressed: (){
                                print("fui clicado pelo ${indice}");
                                Navigator.pop(context);
                              },
                              child: Text("Não"),
                              
                              )
                            ],
                          );
                      }
                      );

                } ,
                // onLongPress: (){
                //     print("ação ocorrendo NO ONLONGPRESS");
                // },
                title: Text(_itens[indice]["title"]),
                subtitle: Text(_itens[indice]["descricao"]),
             );
            
          }
          )
      ),
    );
  }
}