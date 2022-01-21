import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:calculadora_imc/src/pages/my_home_page.dart';
import 'package:calculadora_imc/src/providers/actualiza_imc.dart';
import 'package:calculadora_imc/src/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      // ----- implementación del provider
      providers: [ChangeNotifierProvider(create: (context) => ActualizaIMC())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        theme: AppTheme.temaLight,
        home: const SafeArea(
          top: true,
          bottom: true,
          child: HomePage(),
        ),
      ),
    );
  }
}
