import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:preguntopia/theme/theme_helper.dart';
import 'package:preguntopia/routes/app_routes.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ///ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'preguntopia',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.bienvenidaScreen,
      routes: AppRoutes.routes,
    );
  }
}
