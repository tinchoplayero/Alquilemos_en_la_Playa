import 'package:alquilemos_en_la_playa/disponibilidad.dart';
import 'package:alquilemos_en_la_playa/home_page.dart';
import 'package:alquilemos_en_la_playa/nuevo_huesped.dart';
import 'package:alquilemos_en_la_playa/vista_general.dart';
import 'package:flutter/material.dart';
import 'package:alquilemos_en_la_playa/theme/theme.dart';
import 'package:go_router/go_router.dart';

class MenuInferior extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BottomAppBar(
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
              onPressed: () => context.pushNamed(VistaGeneral.name),
              icon: Icon(Icons.grid_view),
              //label: 'Ver Deptos',
              ),
            IconButton(
              onPressed: () => context.pushNamed(NuevoHuesped.name),
              icon: Icon(Icons.person_add),
              //label: 'Agregar',
              ),  
          ],
          ),
        );
  }
}