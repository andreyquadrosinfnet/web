import 'package:flutter/material.dart';
import 'package:flutter_web_teste2/app_routes.dart';
import 'package:flutter_web_teste2/screens/about_screen.dart';
import 'package:flutter_web_teste2/screens/homepage_screen.dart';
import 'package:flutter_web_teste2/screens/works_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web Test 2',
      theme: ThemeData.light(
        //primarySwatch: Colors.blue,
      ),
      home: HomePageScreen(),
      routes: {
        AppRoutes.PAGINA_INICIAL: (context) => HomePageScreen(),
        AppRoutes.SOBRE_MIM: (context) => AboutScreen(),
        AppRoutes.TRABALHOS: (context) => WorksScreen(),
    });
  }
}
