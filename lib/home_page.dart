import 'package:alquilemos_en_la_playa/disponibilidad.dart';
import 'package:alquilemos_en_la_playa/nuevo_huesped.dart';
import 'package:alquilemos_en_la_playa/vista_general.dart';
import 'package:alquilemos_en_la_playa/widget/eventos_del_dia.dart';
import 'package:alquilemos_en_la_playa/widget/menu_inferior.dart';
import 'package:flutter/material.dart';
import 'package:alquilemos_en_la_playa/theme/theme.dart';
import 'package:go_router/go_router.dart';
import 'package:alquilemos_en_la_playa/widget/logo.dart';
import 'package:alquilemos_en_la_playa/widget/titulo.dart';
import 'package:alquilemos_en_la_playa/widget/dia_hora_actual.dart';


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
                Logo(),
                TituloGestion(),
                DiaHoraActual(),
                EventosDelDia(),
                              
              ]
            ),
          )
          
        ),
        bottomNavigationBar: MenuInferior(),
      );
  }
}