import 'package:flutter/material.dart';
import 'package:youtubeapi/testess/home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController idController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  String infotext = "";
  
  void _resetText(){
    setState((){
      idController.text = "";
      senhaController.text = "";
      infotext = "";
    });
  }

  void _login(){
    if(idController.text == 'admin' && senhaController.text == '1234'){
      Navigator.push(context, new MaterialPageRoute(
        builder: (BuildContext context) => new Home(),)
      );
    }else{
      setState(() {
        infotext = "Os dados estão incorretos.";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: new Text('Efetue o Login'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.refresh),
          onPressed: () {
            _resetText();
          },
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Icon(Icons.person_outline, size: 160, color: Colors.yellow,),
            TextField(
                decoration: InputDecoration(
                  labelText: "ID", labelStyle: TextStyle(color: Colors.yellow, fontSize: 20.0),
                  border: OutlineInputBorder()
                ),
                style: TextStyle(color: Colors.yellow, fontSize: 25.0),
                keyboardType: TextInputType.emailAddress,
                controller: idController,
              ),
            Divider(),
            TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Senha", labelStyle: TextStyle(color: Colors.yellow, fontSize: 20.0),
                  border: OutlineInputBorder()
                ),
                style: TextStyle(color: Colors.yellow, fontSize: 25.0),
                keyboardType: TextInputType.number,
                controller: senhaController,
              ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: 50.0,
                child: RaisedButton(
                  child: Text("Entrar", style: TextStyle(color: Colors.white, fontSize: 25.0),),
                  onPressed: () {
                    _login();
                  },
                  color: Colors.black,
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(infotext, style: TextStyle(color: Colors.red, fontSize: 25.0),
              textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}