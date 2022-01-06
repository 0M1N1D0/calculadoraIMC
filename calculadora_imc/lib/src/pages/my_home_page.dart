//import 'dart:ui';

// archivos de flutter
import 'package:flutter/material.dart';

// archivos propios
import 'package:calculadora_imc/src/widgets/row_altura.dart';
import 'package:calculadora_imc/src/widgets/row_peso.dart';
import 'package:calculadora_imc/src/widgets/row_botones.dart';
import 'package:calculadora_imc/src/widgets/linear_indicator.dart';

// variables globales
double peso = 0;
double altura = 0;
double imc = 0;
//double porcentaje = 0;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora IMC"),
        centerTitle: true,
      ),
      /*
      El contenedor tendrá la columna que a su ves contendrá 
      todos los elementos de la pantalla. Se creó primero el container 
      para crear un margen inicial y los elementos no se pongan hasta
      los extremos de la pantalla.
      */
      body: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ), // margen del container
        //color: Colors.red,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            MyRowAltura(),
            SizedBox(
              height: 25.0,
            ),
            MyRowPeso(),
            SizedBox(
              height: 40.0,
            ),
            MyRowBotones(),
            SizedBox(
              height: 30.0,
            ),
            MyLinearPercentIndicator(),
          ],
        ), // columna principal
      ),
    );
  }
}
