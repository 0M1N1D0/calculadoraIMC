import 'dart:ui';

import 'package:flutter/material.dart';

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
          children: [
            _rowAltura(),
            const SizedBox(
              height: 25.0,
            ),
            _rowPeso(),
          ],
        ), // columna principal
      ),
    );
  }

  //*************************************
  // WIDGET ROW ALTURA
  //*************************************
  Row _rowAltura() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Altura',
          style: TextStyle(fontSize: 20.0),
        ),
        /*
        El TextField dentro de una Row se necesita
        poner dentro de un Expanded sino falla la 
        renderización del TextField
        */
        SizedBox(
          width: 180.0,
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                style: const TextStyle(fontSize: 25.0),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  hintText: '0.00',
                  helperText: 'Ejemplo 1.73',
                ),
                onChanged: (String valor) {
                  //TODO: guardar dato
                },
              ),
            ),
          ),
        ),
        const Text(
          'metros',
          style: TextStyle(fontSize: 20.0),
        ),
      ],
    );
  }

  //*************************************
  // WIDGET ROW PESO
  //*************************************
  Row _rowPeso() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Peso',
          style: TextStyle(fontSize: 20.0),
        ),
        /*
        El TextField dentro de una Row se necesita
        poner dentro de un Expanded sino falla la 
        renderización del TextField
        */
        SizedBox(
          width: 180.0,
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                style: const TextStyle(fontSize: 25.0),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  hintText: '0.00',
                  helperText: 'Ejemplo 76',
                ),
                onChanged: (String valor) {
                  //TODO: guardar dato
                },
              ),
            ),
          ),
        ),
        const Text(
          'kilos',
          style: TextStyle(fontSize: 20.0),
        ),
      ],
    );
  }
}
