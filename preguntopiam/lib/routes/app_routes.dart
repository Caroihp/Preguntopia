import 'package:flutter/material.dart';
import 'package:preguntopia/presentation/bienvenida_screen/bienvenida_screen.dart';
import 'package:preguntopia/presentation/categorias_screen/categorias_screen.dart';
import 'package:preguntopia/presentation/iniciar_juego_screen/iniciar_juego_screen.dart';
import 'package:preguntopia/presentation/preguntashistoria_screen/preguntashistoria_screen.dart';
import 'package:preguntopia/presentation/preguntasdeportes_screen/preguntasdeportes_screen.dart';
import 'package:preguntopia/presentation/final_screen/final_screen.dart';
import 'package:preguntopia/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String bienvenidaScreen = '/bienvenida_screen';

  static const String categoriasScreen = '/categorias_screen';

  static const String iniciarJuegoScreen = '/iniciar_juego_screen';

  static const String preguntashistoriaScreen = '/preguntashistoria_screen';

  static const String preguntasdeportesScreen = '/preguntasdeportes_screen';

  static const String finalScreen = '/final_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    bienvenidaScreen: (context) => BienvenidaScreen(),
    categoriasScreen: (context) => CategoriasScreen(),
    iniciarJuegoScreen: (context) => IniciarJuegoScreen(),
    preguntashistoriaScreen: (context) => PreguntashistoriaScreen(),
    preguntasdeportesScreen: (context) => PreguntasdeportesScreen(),
    finalScreen: (context) => FinalScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
