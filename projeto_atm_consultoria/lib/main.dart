import 'package:flutter/material.dart';
import 'package:projeto_atm_consultoria/Clientes.dart';
import 'package:projeto_atm_consultoria/Contatos.dart';
import 'package:projeto_atm_consultoria/Servicos.dart';
import 'package:projeto_atm_consultoria/Sobre.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TelaPrincipal(),
  ));
}
class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  void _abrirEmpresa(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Sobre()));
  }
  void _abrirServico(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Servicos()));
  }
  void _abrirCliente(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Clientes()));
  }
  void _abrirContato(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Contatos()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ATM CONSULTORIA"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo.png"),
            Padding(padding: EdgeInsets.only(top: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                  GestureDetector(onTap: _abrirEmpresa,
                  child: Image.asset("images/menu_empresa.png"),
                  ),
                  GestureDetector(onTap: _abrirServico,
                  child: Image.asset("images/menu_servico.png"),
                  ),

              ],
            ),
            ),
            Padding(padding: EdgeInsets.only(top: 32),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                  GestureDetector(onTap: _abrirCliente,
                  child: Image.asset("images/menu_cliente.png"),
                  ),
                  GestureDetector(onTap: _abrirContato,
                  child: Image.asset("images/menu_contato.png"),
                  ),

              ],
            ),
            )
            
            
          ],
        ),
      ),
    );
  }
}