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
      elevation: 5.0,
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
            margin: const EdgeInsets.only(left: 30.0),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }

  // *******************************************
  // TABLA
  // ********************************************
  DataTable _myTable() {
    return DataTable(
      columns: const [
        DataColumn(
          label: Text('Descripcion'),
        ),
        DataColumn(
          label: Text('IMC'),
        ),
      ],
      rows: const [
        DataRow(
          cells: [
            DataCell(
              Text('Desnutrición severa'),
            ),
            DataCell(
              Text('menor a 16'),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text('Desnutrición moderada'),
            ),
            DataCell(
              Text('16.1 - 18.4'),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text('Bajo peso'),
            ),
            DataCell(
              Text('18.5 - 22'),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text('Peso normal'),
            ),
            DataCell(
              Text('22.1 - 24.9'),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text('Sobrepeso'),
            ),
            DataCell(
              Text('25 - 29.9'),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text('Obesidad tipo 1'),
            ),
            DataCell(
              Text('30 - 34.9'),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text('Obesidad tipo 2'),
            ),
            DataCell(
              Text('35 - 39.9'),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text('Obesidad tipo 3'),
            ),
            DataCell(
              Text('mayor a 40'),
            ),
          ],
        ),
      ],
    );
  }

  // *******************************************
  // TEXTO TABLA
  // ********************************************
  // Text _textoMyTable(String texto, {double? tamanio}) {
  //   return Text(
  //     texto,
  //     textAlign: TextAlign.center,
  //     style: TextStyle(fontSize: tamanio),
  //   );
  // }
}
