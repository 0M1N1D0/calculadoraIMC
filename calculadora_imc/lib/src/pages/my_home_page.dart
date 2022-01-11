//import 'dart:ui';

// archivos de flutter

import 'package:flutter/material.dart';

// archivos propios
import 'package:calculadora_imc/src/widgets/row_altura.dart';
import 'package:calculadora_imc/src/widgets/row_peso.dart';
import 'package:calculadora_imc/src/widgets/row_botones.dart';
import 'package:calculadora_imc/src/widgets/linear_indicator.dart';
import 'package:calculadora_imc/src/widgets/card_result.dart';

// variables globales
double peso = 0;
double altura = 0;
double imc = 0;
String resultado = 'Sin resultado';
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
      /*
        Todo se metió dentro de un ListView porque a la hora de sacar 
        el teclado y este tocaba el Card, aparecía un error de espacio. 
      */
      body: ListView(children: [
        Container(
          margin: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 20.0,
          ), // margen del container

          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const MyRowAltura(),
              const SizedBox(
                height: 25.0,
              ),
              const MyRowPeso(),
              const SizedBox(
                height: 40.0,
              ),
              MyRowBotones(resultado),
              const SizedBox(
                height: 30.0,
              ),
              const MyLinearPercentIndicator(),
              const SizedBox(
                height: 20.0,
              ),
              CardResults(resultado),
            ],
          ), // columna principal
        ),
      ]),
    );
  }
}
