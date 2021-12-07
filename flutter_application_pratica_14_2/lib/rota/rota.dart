import 'package:flutter/material.dart';
import 'package:flutter_application_pratica_14_2/tela/tela.dart';

class Rota extends StatelessWidget {
  const Rota({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => PrimeiraTela(),
        '/segunda': (context) => SegundaTela(),
        '/terceira': (context) => TerceiraTela(),
      },
    );
  }
}
