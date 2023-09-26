import 'package:flutter/material.dart';
import 'package:alquilemos_en_la_playa/theme/theme.dart';

class DiaHoraActual extends StatelessWidget {
  final now = DateTime.now();
  final List<String> diasSemana = [
    'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado', 'Domingo'
  ];
  final List<String> meses = [
    'Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${diasSemana[now.weekday - 1]} ${now.day} de ${meses[now.month - 1]} de ${now.year} ${now.hour}:${now.minute}Hs',
            softWrap: true,
            style: infoSecundaria,
            
          )
        ],
      ),
    );
  }
}
