import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('tinchoplayero'),
        ),
        body: 
        Container(
          child: Column(
            children:[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children:[
                   Image.asset('lib/assets/img/clima.png'),
                ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                   Image.asset('lib/assets/img/homepage_logo.png'),
                ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                   Text('Gestión de alquileres',
                    style: TextStyle(
                      fontFamily: 'Lobster',
                      fontSize: 60,
                      color: Colors.green,
                    ),
                   ),
                ]
              ),
            ]
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
      ),
    );
  }
  

}
