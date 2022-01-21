import 'package:flutter/material.dart';

class MyTableCard extends StatelessWidget {
  const MyTableCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
