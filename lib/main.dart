import 'package:flutter/material.dart';
import 'package:lopezwidgets/pantalla_uno.dart';
import 'package:lopezwidgets/pantalla_dos.dart';
import 'package:lopezwidgets/pantalla_tres.dart';
import 'package:lopezwidgets/pantalla_cuatro.dart';
import 'package:lopezwidgets/pantalla_cinco.dart';
import 'package:lopezwidgets/pantalla_seis.dart';
import 'package:lopezwidgets/pantalla_siete.dart';
import 'package:lopezwidgets/pantalla_ocho.dart';
import 'package:lopezwidgets/pantalla_nueve.dart';
import 'package:lopezwidgets/pantalla_diez.dart';
import 'package:lopezwidgets/pantalla_once.dart';

void main() => runApp(MisWidgetsApp());

class MisWidgetsApp extends StatelessWidget {
  const MisWidgetsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Entre Paginas Routes',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaUno(),
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PantallaSeis(),
        '/pantalla7': (context) => const PantallaSiete(),
        '/pantalla8': (context) => const PantallaOcho(),
        '/pantalla9': (context) => const PantallaNueve(),
        '/pantalla10': (context) => const PantallaDiez(),
        '/pantalla11': (context) => const PantallaOnce(),
      },
    );
  }
}
