import 'dart:ui';

import 'package:flutter/material.dart';

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
        // TODO: hacer cálculo
      },
      child: const Text(
        'Calcular',
        style: TextStyle(fontSize: 18.0),
      ),
    );
  }
}
