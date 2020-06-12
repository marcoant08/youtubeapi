/*import 'package:flutter/material.dart';

class Sobre extends StatefulWidget {
  @override
  _SobreState createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  @override
  Widget build(BuildContext context) {
    return Container(
      back
      child: Padding(
        padding: const EdgeInsets(top: 40.0),
              child: Text("Desenvolvido por Marco Antônio Araújo Gonçalves, Daniel Oliveira "+
              "e Luiz Gabriel para a disciplina de Programação de Dispositivos Móveis, ministrada pelo "+
              "professor David Silva.", style: TextStyle(color: Colors.black, fontSize: 14.0),
              textAlign: TextAlign.center,
        ),
      ),
    );
  }
}*/

import 'package:flutter/material.dart';

class Sobre extends StatefulWidget {
  @override
  _SobreState createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: new Text('Sobre'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 40.0),
              child: ListView(
                children: <Widget>[
                   Text("Desenvolvido por Marco Antônio Araújo Gonçalves, Daniel Oliveira "+
                    "e Luiz Gabriel para a disciplina de Programação de Dispositivos Móveis, ministrada pelo "+
                    "professor David Silva.", style: TextStyle(color: Colors.black, fontSize: 18.0),
                  textAlign: TextAlign.center,
                  ),
                  Divider(),
                  Image.network("https://static.mundoeducacao.bol.uol.com.br/vestibular/vestibular/uema-5d14f94626226.jpg"),
                ]
            ),
      ),
      
    );
  }
}