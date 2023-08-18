import 'package:alquilemos_en_la_playa/calendario.dart';
import 'package:alquilemos_en_la_playa/home_page.dart';
import 'package:alquilemos_en_la_playa/main.dart';
import 'package:alquilemos_en_la_playa/config/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:alquilemos_en_la_playa/botonera.dart';
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
            calendario(),
            
          ],
        )
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.purple,
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () => context.pushNamed(HomePage.name),
              //label: 'Inicio',
              //backgroundColor: temaAlquilemos.primaryColor,
              ),
            IconButton(
              icon: Icon(Icons.visibility),
              //label: 'Disponibilidad',
              onPressed: () => context.pushNamed(Disponibilidad.name)
              ),
            IconButton(
              onPressed: () => "",
              icon: Icon(Icons.grid_view),
              //label: 'Ver Deptos',
              ),
            IconButton(
              onPressed: () => "",
              icon: Icon(Icons.person_add),
              //label: 'Agregar',
              ),  
          ],
          ),
        ),
    );
  }
}
