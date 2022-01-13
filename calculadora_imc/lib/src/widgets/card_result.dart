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
          const SizedBox(height: 15),
          Container(
            //alignment: Alignment.bottomRight,
            child: _myTable(),
            margin: EdgeInsets.only(left: 30.0),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }

  // *******************************************
  // TABLA
  // ********************************************
  Table _myTable() {
    return Table(
      //textDirection: TextDirection.rtl,

      //defaultVerticalAlignment: TableCellVerticalAlignment.,
      children: [
        TableRow(
          children: [
            _textoMyTable('Descripción', tamanio: 22.0),
            _textoMyTable('IMC', tamanio: 22.0),
          ],
        ),
        TableRow(
          children: [
            _textoMyTable('Desnutrición Severa'),
            _textoMyTable('menor a 16'),
          ],
        ),
        TableRow(
          children: [
            _textoMyTable('Desnutrición Moderada'),
            _textoMyTable('16.1 - 18.4'),
          ],
        ),
        TableRow(
          children: [
            _textoMyTable('Bajo Peso'),
            _textoMyTable('18.5 - 22'),
          ],
        ),
        TableRow(
          children: [
            _textoMyTable('Peso Normal'),
            _textoMyTable('22.1 - 24.9'),
          ],
        ),
        TableRow(
          children: [
            _textoMyTable('Sobrepeso'),
            _textoMyTable('25 - 29.9'),
          ],
        ),
        TableRow(
          children: [
            _textoMyTable('Obesidad Tipo 1'),
            _textoMyTable('30 - 34.9'),
          ],
        ),
        TableRow(
          children: [
            _textoMyTable('Obesidad Tipo 2'),
            _textoMyTable('35 - 39.9'),
          ],
        ),
        TableRow(
          children: [
            _textoMyTable('Obesidad Tipo 3'),
            _textoMyTable('mayor a 40'),
          ],
        ),
      ],
    );
  }

  // *******************************************
  // TEXTO TABLA
  // ********************************************
  Text _textoMyTable(String texto, {double? tamanio}) {
    return Text(
      texto,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: tamanio),
    );
  }
}
