import 'package:flutter/material.dart';

class MyRowPeso extends StatefulWidget {
  const MyRowPeso({
    Key? key,
  }) : super(key: key);

  @override
  State<MyRowPeso> createState() => _MyRowPesoState();
}

class _MyRowPesoState extends State<MyRowPeso> {
  @override
  Widget build(BuildContext context) {
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
