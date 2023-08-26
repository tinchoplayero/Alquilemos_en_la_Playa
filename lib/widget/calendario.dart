import 'package:alquilemos_en_la_playa/disponibilidad/cubit/disponibilidad_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Calendario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    /***************INICIO CUBIT************** */
    final botonDepto = context.watch<DisponibilidadCubit>().state.botonDepto;

    String calendarioDepto;
    switch (botonDepto) {
      case 2:
        calendarioDepto = 'assets/img/calendario2.JPG';
        break;
      case 4:
        calendarioDepto = 'assets/img/calendario4.JPG';
        break;
      case 5:
        calendarioDepto = 'assets/img/calendario5.JPG';
        break;
      case 6:
        calendarioDepto = 'assets/img/calendario6.JPG';
        break;
      case 7:
        calendarioDepto = 'assets/img/calendario7.JPG';
        break;
      case 8:
        calendarioDepto = 'assets/img/calendario8.JPG';
        break;
      default:
        calendarioDepto = 'assets/img/calendario.JPG';
    }
    /***************FIN CUBIT************** */
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          calendarioDepto,
          width: size.width * 0.80,
        ),
      ],
    );
  }
}
