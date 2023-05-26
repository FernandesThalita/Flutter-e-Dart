import 'dart:math';
import 'package:flutter/material.dart';


class Aplicacao  extends StatefulWidget {
  @override
  _AplicacaoState  createState() => _AplicacaoState();
}

class _AplicacaoState extends State<Aplicacao> {
  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();
    var _resultado;

  void calculo(){
    double precoAlcool = double.parse(_controllerAlcool.text);
    double precoGasolina = double.parse(_controllerAlcool.text);
      
     

       double divisao = precoAlcool/precoGasolina;

       if(divisao >= 0.7){
        
        _resultado = "Melhor gasolina";
       }else{
        _resultado = "Melhor álcool";
       }

     

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gasolina ou Álcool?'),
      ),

      body: Column(
        children: [

        Padding(padding: EdgeInsets.all(14),
          child: Image.asset("../img/logo.png"),
          
        ),

        Padding(padding: EdgeInsets.all(14),
          child: Text("Saiba qual melhor opção para abastecimento do seu carro",
            style: TextStyle(fontSize: 19),
          ),
          
        ),
        Padding(padding: EdgeInsets.all(14),
          child: TextField(
             decoration: InputDecoration(labelText: "Preço Álcool - ex: 1.99"),
              controller: _controllerAlcool
          ),
          
        ),
        Padding(padding: EdgeInsets.all(14),
          child: TextField(
             decoration: InputDecoration(labelText: "Preço Gasolina - ex: 2.99"),
             controller: _controllerGasolina,
          ),
          
        ),

                ElevatedButton(
                  
                  child: Text(
                    "Calcular.",
                    
                  ),
                      style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      fixedSize: Size(300,0)
                      
                    ),
                    onPressed: (){
                     calculo();
                    },
                )

                Padding(padding: EdgeInsets.all(50),
                  child: Text(_resultado),
                )
      ],
      )
    );

    
  }
}