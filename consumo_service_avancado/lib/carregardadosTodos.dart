import 'package:consumo_service_avancado/Todos.dart';
import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import 'dart:async';
import 'dart:convert';


class telaTodos extends StatefulWidget {
  @override
  _telaTodosState createState() => _telaTodosState();
}

class _telaTodosState extends State<telaTodos> {

    String _url = "https://jsonplaceholder.typicode.com/";

    Future<List<Todos>> _recuperarTodos() async {

        http.Response response = await http.get(_url + "todos");
        var _dados = json.decode(response.body); // DECODIFICANDO OS DADOS DO URL.BODY

        List<Todos> postagens = List();

        for(var post in _dados){
            Todos p = Todos(post["userId"],post["id"],post["title"],post["body"]); // criando o post que irá aparecer na tela !!
            postagens.add(p);
        };
        return postagens; // retornado os dados que eu vou conseguir dos Todoss!

    }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carregar uma lista de dados com as infos BTC"),

      ),
      body: FutureBuilder<List<Todos>>(
        future: _recuperarTodos(),
        builder: (context,snapshot){
            switch(snapshot.connectionState){
              case ConnectionState.active:
              break;
              case ConnectionState.none:
              break;
              case  ConnectionState.done:
              if(snapshot.hasError){
                return Center(
                  child: Text("Deu erro"),
                );
              }else{
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context,index){
                        List<Todos> lista = snapshot.data;
                        Todos todos = lista[index];

                        return ListTile(
                            title: Text(todos.title),
                            subtitle: Text(todos.id.toString()),
                        );
                    },

                );
              }
              break;
              case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator(semanticsLabel: "Carregando",),);
              break;
            }

        }
        
        
        ),
    );
  }
}