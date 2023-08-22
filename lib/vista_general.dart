
import 'package:alquilemos_en_la_playa/disponibilidad.dart';
import 'package:alquilemos_en_la_playa/home_page.dart';
import 'package:alquilemos_en_la_playa/nuevo_huesped.dart';
import 'package:alquilemos_en_la_playa/widget/menu_inferior.dart';

import 'package:flutter/material.dart';
import 'package:alquilemos_en_la_playa/widget/botonera.dart';
import 'package:alquilemos_en_la_playa/widget/dispo_total.dart';
import 'package:go_router/go_router.dart';

class VistaGeneral extends StatelessWidget {
  static const name = 'vista-general';
  const VistaGeneral({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Disponibilidad Total'),
      ),
      body: 
      Container(
        child: Column(
          children: [
            DispoTotal(),
            
            
          ],
        )
      ),
      bottomNavigationBar: MenuInferior(),
    );
  }
}
