import 'package:consumo_service_avancado/Post.dart';
import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import 'dart:async';
import 'dart:convert';

class telaCarregarDados extends StatefulWidget {
  @override
  _telaCarregarDadosState createState() => _telaCarregarDadosState();
}

class _telaCarregarDadosState extends State<telaCarregarDados> {
  
  String _urlbasic = "https://jsonplaceholder.typicode.com/";

    Future<List<Post>>_recuperarPosts() async{

        http.Response response = await http.get(_urlbasic + "posts");
        var _dadosjson = json.decode(response.body);

        List<Post> postagens = List();
        for(var post in _dadosjson){
             print(post["title"]);
            
            Post p = Post(post["userId"],post["id"],post["title"],post["body"]);
            postagens.add(p);
        };
        return postagens;

  }
  _post() async{
    var corpo = json.encode(
      {
        "userId" : 120,
        "id" : null,
        "title": "title gustavin",
        "body": "body gustavin"  
      }
    );
    http.Response response = await http.post(
      _urlbasic + "posts",
      headers: {
        "Content-type": "application/json; charset=UTF-8"
      },
      body: corpo
      );
      print(response.statusCode);
      print(response.body);
  }
  _put(){
    
  }
  _delete(){}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consumo de Serviço avançado"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                RaisedButton(
                    onPressed: _post,
                    child: Text("Salvar"),
                    ),
                  RaisedButton(
                    onPressed: _put,
                    child: Text("Atualizar"),
                    ),
                    RaisedButton(
                    onPressed: _delete,
                    child: Text("Deletar"),
                    ),
              ],
            ),
            Expanded(
              child:
              FutureBuilder<List<Post>>(
      future: _recuperarPosts(),

      builder: (context,snapshot){
        
          switch(snapshot.connectionState){
              case ConnectionState.none:
              print("deu ruim padrim");
              break;
              case ConnectionState.waiting:
              return Center(child:CircularProgressIndicator());
              break;
              case ConnectionState.done:
              if(snapshot.hasError){
                print("erro ao carregar a lista");
              }else{
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context,index){
                    List<Post> lista = snapshot.data;
                    Post post = lista[index];
                    return ListTile(
                        title: Text(post.userId.toString()),
                        subtitle: Text(post.title.toString()),
                    );
                  },
                  );
              }
              break;
              case ConnectionState.active:
              print("deu bom ta no active");
              break;
          }
      },
      ),
            ),
          ],
        ),
      ),
      
    );
  }
}