import 'package:flutter/material.dart';

class Disponibilidad extends StatelessWidget {
  const Disponibilidad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Disponibilidad'),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/img/calendario.JPG'),
              ],
            )
          ],
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.lightBlue,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
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
