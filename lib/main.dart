import 'package:alquilemos_en_la_playa/disponibilidad.dart';
import 'package:alquilemos_en_la_playa/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  static const name = 'pagina-inicio';
  const MainApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: temaAlquilemos,
      home: HomePage(),
    );
  }
  

}
