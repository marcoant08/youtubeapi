
import 'package:flutter/material.dart';

class Bodies extends StatefulWidget {
  @override
  _BodiesState createState() => _BodiesState();
}

class _BodiesState extends State<Bodies> {
  @override
  String infotext = "Resultado: ";

  TextEditingController alturaController = TextEditingController();

  TextEditingController pesoController = TextEditingController();

  Widget buildTextField(String label, TextEditingController c){
    return TextField(
                decoration: InputDecoration(
                  labelText: label, labelStyle: TextStyle(color: Colors.yellow, fontSize: 20.0),
                  border: OutlineInputBorder()
                ),
                style: TextStyle(color: Colors.yellow, fontSize: 25.0),
                keyboardType: TextInputType.number,
                controller: c,
              );
  }

  void _resetText(){
    setState((){
      alturaController.text = "";
      pesoController.text = "";
      infotext = "Resultado: ";  
    });
  }

  void _calcularimc(){
    double altura = double.parse(alturaController.text);
    double peso = double.parse(pesoController.text);

    double imc = peso / (altura * altura);

    setState((){
        if(imc < 17){
          infotext = "Muito abaixo do peso - ${imc.toStringAsPrecision(4)}";
        }else if(imc >= 17 && imc < 18.5){
          infotext = "Abaixo do peso - ${imc.toStringAsPrecision(4)}";
        }else if(imc >= 18.5 && imc < 24.5){
          infotext = "Peso normal - ${imc.toStringAsPrecision(4)}";
        }else if(imc >= 25 && imc < 30){
          infotext = "Acima do peso - ${imc.toStringAsPrecision(4)}";
        }else if(imc >= 30 && imc < 35){
          infotext = "Obesidade I - ${imc.toStringAsPrecision(4)}";
        }else if(imc >= 35 && imc < 40){
          infotext = "Obesidade II (severa) - ${imc.toStringAsPrecision(4)}";
        }else if(imc > 40){
          infotext = "Obesidade III (mórbida) - ${imc.toStringAsPrecision(4)}";
        }
    });

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: new Text('Calcular IMC'),
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
            Icon(Icons.accessibility, size: 160, color: Colors.yellow,),
            buildTextField("Altura (cm)", alturaController),
            Divider(),
            buildTextField("Peso (kg)", pesoController),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: 50.0,
                child: RaisedButton(
                  child: Text("Calcular", style: TextStyle(color: Colors.white, fontSize: 25.0),),
                  onPressed: () {
                    _calcularimc();
                  },
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(infotext, style: TextStyle(color: Colors.yellow, fontSize: 25.0),
              textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}