// import 'package:calculadora_imc/src/pages/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:calculadora_imc/src/providers/actualiza_imc.dart';
import 'package:calculadora_imc/src/pages/my_home_page.dart';

//import 'package:calculadora_imc/src/pages/my_home_page.dart';
import 'package:provider/provider.dart';

class CardResults extends StatefulWidget {
  const CardResults(String resultado, {Key? key}) : super(key: key);
  @override
  _CardResultsState createState() => _CardResultsState();
}

class _CardResultsState extends State<CardResults> {
  @override
  Widget build(BuildContext context) {
    // ---- instancia provider
    ActualizaIMC imcProv = Provider.of<ActualizaIMC>(context);
    return Card(
      elevation: 2.0,
      //color: Colors.amberAccent,
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.accessibility_new),
            title: Text(
              'IMC ${imcProv.imcProvidersetGet}',
              textAlign: TextAlign.start,
              style: const TextStyle(fontSize: 22.0),
            ),
            subtitle: const Text('Tu índice de masa corporal'),
          ),
          ListTile(
            leading: const Icon(Icons.analytics_outlined),
            title: Text(
              'Resultado: $resultado',
              textAlign: TextAlign.start,
              style: const TextStyle(fontSize: 22.0),
            ),
            //subtitle: const Text('Tu índice de masa corporal'),
            minVerticalPadding: 10.0,
          ),
          Table(),
        ],
      ),
    );
  }
}
