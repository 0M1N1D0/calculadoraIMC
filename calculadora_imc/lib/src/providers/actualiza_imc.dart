import 'package:flutter/material.dart';

class ActualizaIMC with ChangeNotifier {
  double _imcProvider = 0.0;

  double get imcProvidersetGet {
    return _imcProvider;
  }

  set imcProviderSet(double valor) {
    _imcProvider = valor;
    notifyListeners();
  }
}
