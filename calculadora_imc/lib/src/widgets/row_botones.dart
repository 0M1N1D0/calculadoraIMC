//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:calculadora_imc/src/pages/my_home_page.dart';
import 'package:calculadora_imc/src/classes/imc.dart';
import 'package:calculadora_imc/src/providers/actualiza_imc.dart';

class MyRowBotones extends StatefulWidget {
  const MyRowBotones(String resultado, {Key? key}) : super(key: key);

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
        _buttonCalcular(imcProv, resultado),
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

  ElevatedButton _buttonCalcular(ActualizaIMC imcProv, String resultado) {
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
          resultado = _obtenerResultado(imc);
        });
      },
      child: const Text(
        'Calcular',
        style: TextStyle(fontSize: 18.0),
      ),
    );
  }

  String _obtenerResultado(double imc) {
    if (imc <= 16 && imc >= 0.1) {
      // desnutricion severa
      return resultado = 'Desnutrición severa';
    } else if (imc >= 40) {
      // obesidad III
      return resultado = 'Obesidad tipo 3';
    } else if (imc >= 16.1 && imc <= 18.4) {
      // desnutricion moderada
      return resultado = 'Desnutrición moderada';
    } else if (imc >= 18.5 && imc <= 22) {
      // bajo peso
      return resultado = 'Bajo peso';
    } else if (imc >= 22.1 && imc <= 24.9) {
      // peso normal
      return resultado = 'Peso normal';
    } else if (imc >= 25 && imc <= 29.9) {
      // sobrepeso

      return resultado = 'Sobrepeso';
    } else if (imc >= 30 && imc <= 34.9) {
      // obesidad !

      return resultado = 'Obesidad';
    } else if (imc != 0) {
      // obesidad II

      return resultado = 'Obesidad tipo 2';
    }
    return 'Sin respuesta';
  }
}
