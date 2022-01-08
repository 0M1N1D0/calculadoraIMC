import 'dart:async';
import 'package:flutter/material.dart';

import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:calculadora_imc/src/pages/my_home_page.dart';

class MyLinearPercentIndicator extends StatefulWidget {
  const MyLinearPercentIndicator({Key? key}) : super(key: key);

  @override
  _MyLinearPercentIndicatorState createState() =>
      _MyLinearPercentIndicatorState();
}

class _MyLinearPercentIndicatorState extends State<MyLinearPercentIndicator> {
  double percent = 0;

  // ***********************************************
  // INIT STATE DEL LINEARPERCENTINDICATOR
  // ***********************************************
  @override
  void initState() {
    Timer? timer;
    timer = Timer.periodic(const Duration(milliseconds: 500), (_) {
      setState(() {
        //percent = imc / 30;
        if (percent >= 100) {
          timer!.cancel();
          // percent=0;
        }

        if (imc <= 16 && imc >= 0.1) {
          // desnutricion severa
          percent = 0.01;
        } else if (imc >= 40) {
          // obesidad III
          percent = 1;
        } else if (imc >= 16.1 && imc <= 18.4) {
          // desnutricion moderada
          percent = 0.16;
        } else if (imc >= 18.5 && imc <= 22) {
          // bajo peso
          percent = 0.33;
        } else if (imc >= 22.1 && imc <= 24.9) {
          // peso normal
          percent = 0.49;
        } else if (imc >= 25 && imc <= 29.9) {
          // sobrepeso
          percent = 0.7;
        } else if (imc >= 30 && imc <= 34.9) {
          // obesidad !
          percent = 0.83;
        } else if (imc != 0) {
          // obesidad II
          percent = .95;
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      leading: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: SizedBox(
          width: 68,
          child: Text(
            'Desnutrición Severa',
            //maxLines: 2,
            style: TextStyle(fontSize: 12.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      trailing: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: SizedBox(
          width: 68,
          child: Text(
            'Obesidad Tipo 3',
            style: TextStyle(fontSize: 12.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      //center: const Text('Resultado'),r
      addAutomaticKeepAlive: false,
      percent: percent,
      lineHeight: 25.0,
      animation: true,
      animationDuration: 3000,
      curve: Curves.decelerate,
      clipLinearGradient: true,
      //widgetIndicator: Text('data'),
      linearGradient: const LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Colors.redAccent,
          Colors.yellowAccent,
          Colors.green,
          Colors.yellowAccent,
          Colors.redAccent,
        ],
      ),
    );
  }
}

// List<Color> _listaColores() {
//   return [Colors.amber];
// }
