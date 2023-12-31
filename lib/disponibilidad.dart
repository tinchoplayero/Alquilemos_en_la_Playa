import 'package:alquilemos_en_la_playa/nuevo_huesped.dart';
import 'package:alquilemos_en_la_playa/vista_general.dart';
import 'package:alquilemos_en_la_playa/widget/calendario.dart';
import 'package:alquilemos_en_la_playa/home_page.dart';
import 'package:alquilemos_en_la_playa/main.dart';
import 'package:alquilemos_en_la_playa/theme/theme.dart';
import 'package:alquilemos_en_la_playa/widget/menu_inferior.dart';
import 'package:flutter/material.dart';
import 'package:alquilemos_en_la_playa/widget/botonera.dart';
import 'package:go_router/go_router.dart';

class Disponibilidad extends StatelessWidget {
  static const name = 'pagina-disponibilidad';
  const Disponibilidad({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Disponibilidad'),
      ),
      body: 
      Container(
        child: Column(
          children: [
            Botonera(),
            Calendario(),
            
          ],
        )
      ),
      bottomNavigationBar: MenuInferior(),
    );
  }
}
