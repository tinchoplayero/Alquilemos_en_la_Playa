import 'package:alquilemos_en_la_playa/disponibilidad/cubit/disponibilidad_cubit.dart';
import 'package:alquilemos_en_la_playa/widget/calendario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../theme/theme.dart';

class Botonera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<DisponibilidadCubit, DisponibilidadState>(
      builder: (context, state) {
        return Column(children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(size.width * 0.3, size.height * 0.15),
                    //*****INICIO LINEAS CUBIT */
                    backgroundColor:
                        state.botonDos ? customColor : primaryColor,
                  ),
                  onPressed: () {
                    context
                        .read<DisponibilidadCubit>()
                        .botondoschanged();
                    //*****FIN LINEAS  CUBIT */

                    // Acción del botón
                  },
                  child: Text(
                    '2',
                    style: TextStyle(
                      fontSize: size.width * 0.1,
                      color: Colors.white,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  minimumSize: Size(size.width * 0.3, size.height * 0.15),
                    //*****INICIO LINEAS CUBIT */
                    backgroundColor:
                        state.botonCuatro ? customColor : primaryColor,
                  ),
                  onPressed: () {
                    context
                        .read<DisponibilidadCubit>()
                        .botoncuatrochanged();
                    //*****FIN LINEAS  CUBIT */
                    // Acción del botón
                  },
                  child: Text(
                    '4',
                    style: TextStyle(
                      fontSize: size.width * 0.1,
                      color: Colors.white,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(size.width * 0.3, size.height * 0.15),
                  //*****INICIO LINEAS CUBIT */
                    backgroundColor:
                        state.botonCinco ? customColor : primaryColor,
                  ),
                  onPressed: () {
                    context
                        .read<DisponibilidadCubit>()
                        .botoncincochanged();
                    //*****FIN LINEAS  CUBIT */
                    // Acción del botón
                  },
                  child: Text(
                    '5',
                    style: TextStyle(
                      fontSize: size.width * 0.1,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(size.width * 0.3, size.height * 0.15),
                  //*****INICIO LINEAS CUBIT */
                    backgroundColor:
                        state.botonSeis ? customColor : primaryColor,
                  ),
                  onPressed: () {
                    context
                        .read<DisponibilidadCubit>()
                        .botonseischanged();
                    //*****FIN LINEAS  CUBIT */
                    // Acción del botón
                  },
                  child: Text(
                    '6',
                    style: TextStyle(
                      fontSize: size.width * 0.1,
                      color: Colors.white,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(size.width * 0.3, size.height * 0.15),
                  //*****INICIO LINEAS CUBIT */
                    backgroundColor:
                        state.botonSiete ? customColor : primaryColor,
                  ),
                  onPressed: () {
                    context
                        .read<DisponibilidadCubit>()
                        .botonsietechanged();
                    //*****FIN LINEAS  CUBIT */
                    // Acción del botón
                  },
                  child: Text(
                    '7',
                    style: TextStyle(
                      fontSize: size.width * 0.1,
                      color: Colors.white,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(size.width * 0.3, size.height * 0.15),
                  //*****INICIO LINEAS CUBIT */
                    backgroundColor:
                        state.botonOcho ? customColor : primaryColor,
                  ),
                  onPressed: () {
                    context
                        .read<DisponibilidadCubit>()
                        .botonochochanged();
                    //*****FIN LINEAS  CUBIT */
                    // Acción del botón
                  },
                  child: Text(
                    '8',
                    style: TextStyle(
                      fontSize: size.width * 0.1,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        Calendario()
        ]);
      },
    );
  }
}
