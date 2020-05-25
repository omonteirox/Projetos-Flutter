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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consumo de Serviço avançado"),
      ),
      body: FutureBuilder<List<Post>>(
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
    );
  }
}