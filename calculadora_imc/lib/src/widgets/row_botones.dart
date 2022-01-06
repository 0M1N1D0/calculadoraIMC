import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:calculadora_imc/src/pages/my_home_page.dart';
import 'package:calculadora_imc/src/classes/imc.dart';

class MyRowBotones extends StatefulWidget {
  const MyRowBotones({Key? key}) : super(key: key);

  @override
  _MyRowBotonesState createState() => _MyRowBotonesState();
}

class _MyRowBotonesState extends State<MyRowBotones> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buttonCalcular(),
        _buttonLimpiar(),
      ],
    );
  }

  // ***********************************
  // METODO BOTON LIMPIAR
  // ***********************************

  ElevatedButton _buttonLimpiar() {
    return ElevatedButton(
      onPressed: () {
        // TODO: limpiar
      },
      child: const Text(
        'Limpiar',
        style: TextStyle(fontSize: 18.0),
      ),
    );
  }

  // ***********************************
  // METODO BOTON CALCULAR
  // ***********************************

  ElevatedButton _buttonCalcular() {
    return ElevatedButton(
      //style: ButtonStyle(shape: BorderRadius.circular(5)),
      onPressed: () {
        setState(() {
          // instanciando la clase para el cálculo
          IndiceMasaCorporal objIMC =
              IndiceMasaCorporal(altura: altura, peso: peso);
          // recibiendo el resultado
          imc = double.parse(objIMC.calculoIMCtoString());
          //print(imc);
        });
      },
      child: const Text(
        'Calcular',
        style: TextStyle(fontSize: 18.0),
      ),
    );
  }
}
