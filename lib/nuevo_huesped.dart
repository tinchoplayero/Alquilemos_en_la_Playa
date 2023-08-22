import 'package:alquilemos_en_la_playa/disponibilidad.dart';
import 'package:alquilemos_en_la_playa/home_page.dart';
import 'package:alquilemos_en_la_playa/vista_general.dart';
import 'package:alquilemos_en_la_playa/widget/menu_inferior.dart';

import 'package:flutter/material.dart';
import 'package:alquilemos_en_la_playa/widget/carga_huesped.dart';
import 'package:alquilemos_en_la_playa/widget/formulario.dart';
import 'package:go_router/go_router.dart';

class NuevoHuesped extends StatelessWidget {
  static const name = 'nuevo-huesped';
  const NuevoHuesped({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Ingresar un nuevo huesped'),
      ),
      body: 
      Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FormularioIngreso(),
            
            
          ],
        )
      ),
      bottomNavigationBar: MenuInferior(),
    );
  }
}