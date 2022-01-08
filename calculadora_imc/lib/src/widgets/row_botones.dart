//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:calculadora_imc/src/pages/my_home_page.dart';
import 'package:calculadora_imc/src/classes/imc.dart';
import 'package:calculadora_imc/src/providers/actualiza_imc.dart';

class MyRowBotones extends StatefulWidget {
  const MyRowBotones({Key? key}) : super(key: key);

  @override
  _MyRowBotonesState createState() => _MyRowBotonesState();
}

class _MyRowBotonesState extends State<MyRowBotones> {
  @override
  Widget build(BuildContext context) {
    // ------ instancia provider
    ActualizaIMC imcProv = Provider.of<ActualizaIMC>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        /* 
          la instancia provider se pasa como argumento
          al método del boton que hace el cálculo 
        */
        _buttonCalcular(imcProv),
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

  ElevatedButton _buttonCalcular(ActualizaIMC imcProv) {
    return ElevatedButton(
      //style: ButtonStyle(shape: BorderRadius.circular(5)),
      onPressed: () {
        setState(() {
          // instanciando la clase para el cálculo
          IndiceMasaCorporal objIMC =
              IndiceMasaCorporal(altura: altura, peso: peso);
          // recibiendo el resultado
          imc = double.parse(objIMC.calculoIMCtoString());
          //print(imc );
          imcProv.imcProviderSet = imc;
        });
      },
      child: const Text(
        'Calcular',
        style: TextStyle(fontSize: 18.0),
      ),
    );
  }
}
