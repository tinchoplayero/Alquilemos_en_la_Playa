import 'package:alquilemos_en_la_playa/disponibilidad.dart';
import 'package:flutter/material.dart';
import 'package:alquilemos_en_la_playa/theme.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  static const name = 'pagina-inicio';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Hola, tinchoplayero'),
        ),
        body: Container(
          
          child: Padding(
            padding: EdgeInsets.all(40),
            child: Column(
              children:[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                     Image.asset(
                      'assets/img/homepage_logo.png',
                      width: size.width * 0.70,
                    ),
                  ]
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                     Text('Gestión de alquileres',
                      style: titulosPrincipales,
                     ),
                  ]
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                       Image.asset(
                        'assets/img/agenda.png',
                        width: size.width * 0.70,
                        ),
                    ]
                  ),
                ),
                
                
              ]
            ),
          )
          
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.purple,
          
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () => "",
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