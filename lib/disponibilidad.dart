import 'package:alquilemos_en_la_playa/calendario.dart';
import 'package:alquilemos_en_la_playa/theme.dart';
import 'package:flutter/material.dart';
import 'package:alquilemos_en_la_playa/botonera.dart';

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
            calendario(),
            
          ],
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
           items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
              backgroundColor: temaAlquilemos.primaryColor
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.visibility),
              label: 'Disponibilidad',
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view),
              label: 'Ver Deptos',
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_add),
              label: 'Agregar',
              ),  
          ],
          ),
    );
  }
}
