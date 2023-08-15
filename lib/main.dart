import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('tinchoplayero'),
        ),
        body: Container(
          width: size.width * 0.70,
          color: Colors.red,
          child: Column(
            children:[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children:[
                   Image.asset(
                    'lib/assets/img/clima.png',
                    width: size.width * 0.70,
                    ),
                ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                   Image.asset(
                    'lib/assets/img/homepage_logo.png',width: size.width * 0.70,
                  ),
                ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                   Text('Gestión de alquileres',
                    style: TextStyle(
                      fontFamily: 'Lobster',
                      fontSize: size.width * 0.08,
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
