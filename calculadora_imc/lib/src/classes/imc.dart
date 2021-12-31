/*
  Esta clase generará un método estático que recibirá 
  el peso en kg y la altura en metros y retornará 
  el IMC (índice de masa corporal en formato String). 
*/

class IndiceMasaCorporal {
  // propiedades
  double? _altura;
  double? _peso;
  double? _imc;

  /* 
   constructor con nombres y manda llamar el método 
   para realizar el cálculo
  */
  IndiceMasaCorporal({required altura, required peso}) {
    _altura = altura;
    _peso = peso;
    _calculo();
  }

  // método que recibe la altura y el peso y devuelve el IMC
  double _calculo() {
    // asignación del IMC
    _imc = _peso! / (_altura! * _altura!);
    return _imc!;
  }

  // método público que regresa el resultado en String
  String calculoIMCtoString() {
    return _imc!.toStringAsFixed(3);
  }
}
