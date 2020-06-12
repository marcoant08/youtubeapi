import 'package:flutter/material.dart';
import 'package:youtubeapi/screens/bodies.dart';
import 'package:youtubeapi/screens/home_screen.dart';
import 'package:youtubeapi/screens/home_screen2.dart';
import 'package:youtubeapi/screens/home_screen3.dart';
import 'package:youtubeapi/testess/login.dart';
import 'package:youtubeapi/testess/sobre.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0),
          child: Container(
            child: Image.network("https://ceres.noticias.rs/wp-content/uploads/sites/7/2018/04/ceres.noticias.rs-conselho-municipal-de-saude-reuniu-se-na-ultima-quarta-feira-25-saude-1024x1024.png"),
          ),
        ),
      backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: new Text('Saúde Online'),
        centerTitle: true,
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Marco Antonio Gabriel Daniel'),
              accountEmail: new Text('ouscara@aluno.uema.br'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage('https://static.mundoeducacao.bol.uol.com.br/vestibular/vestibular/uema-5d14f94626226.jpg'),
              ),
            ),
            new ListTile(
              title: new Text('Ministério da Saúde'),
              onTap: () {
                Navigator.push(context, new MaterialPageRoute(
                  builder: (BuildContext context) => new HomeScreen(),)
                );
              },
            ),
            Divider(),
            new ListTile(
              title: new Text('Canal Saúde'),
              onTap: () {
                Navigator.push(context, new MaterialPageRoute(
                  builder: (BuildContext context) => new HomeScreen2(),)
                );
              },
            ),
            Divider(),
            new ListTile(
              title: new Text('Dr. Drauzio Varella'),
              onTap: () {
                Navigator.push(context, new MaterialPageRoute(
                  builder: (BuildContext context) => new HomeScreen3(),)
                );
              },
            ),
            Divider(),
            new ListTile(
              title: new Text('Calcule seu IMC'),
              onTap: () {
                Navigator.push(context, new MaterialPageRoute(
                  builder: (BuildContext context) => new Bodies(),)
                );
              },
            ),
            Divider(),
            new ListTile(
              title: new Text('Sobre'),
              onTap: () {
                Navigator.push(context, new MaterialPageRoute(
                  builder: (BuildContext context) => new Sobre(),)
                );
              },
            ),
            Divider(),
            new ListTile(
              title: new Text('Log out'),
              onTap: () {
                Navigator.push(context, new MaterialPageRoute(
                  builder: (BuildContext context) => new LoginPage(),)
                );
              },
            )
          ]
        ),
      ),
    );
  }
}