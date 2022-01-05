import 'package:flutter/material.dart';

class MyRowAltura extends StatefulWidget {
  const MyRowAltura({
    Key? key,
  }) : super(key: key);

  @override
  State<MyRowAltura> createState() => _MyRowAlturaState();
}

class _MyRowAlturaState extends State<MyRowAltura> {
  @override
  Widget build(BuildContext context) {
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
}
