import 'package:flutter/material.dart';
import 'package:alquilemos_en_la_playa/theme/theme.dart';

class TituloGestion extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                     Text('Gestión de alquileres',
                      style: titulosPrincipales,
                     ),
                  ]
                );
  }
}