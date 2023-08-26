import 'package:alquilemos_en_la_playa/disponibilidad/cubit/disponibilidad_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../theme/theme.dart';
import '../../widget/widgets.dart';

// import 'package:flutter_bloc/flutter_bloc.dart';
void main() => runApp(MainNavApp());

class MainNavApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: temaAlquilemos,
      home: MainNav(),
    );
  }
}

class MainNav extends StatefulWidget {
  @override
  State<MainNav> createState() => _MainNavState();
}

class _MainNavState extends State<MainNav> {
  int _selectedIndex = 0;

  List<List<Widget>> _widgetOptions = [
    [
      Logo(),
      TituloGestion(),
      DiaHoraActual(),
      EventosDelDia(),
    ],
    [
      BlocProvider(
        create: (context) => DisponibilidadCubit(),
        child: Botonera(),
      ),
    ],
    [
      DispoTotal(),
    ],
    [
      BlocProvider(
        create: (context) => DisponibilidadCubit(),
        child: FormularioIngreso(),
      ),
    ],
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Hola, tinchoplayero'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _widgetOptions[_selectedIndex],
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor:
              Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          primaryColor:
              Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
          unselectedWidgetColor:
              Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.visibility),
              label: 'X Depto',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view),
              label: 'X Fecha',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_add),
              label: '+ Huesped',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
