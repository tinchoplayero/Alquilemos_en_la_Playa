import 'package:alquilemos_en_la_playa/disponibilidad/cubit/disponibilidad_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class Botonera extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    //*****INICIO LINEAS CUBIT */
    BlocProvider(
      create: (context) => DisponibilidadCubit(),
    );
    final botonCubit = context.watch<DisponibilidadCubit>();
    final state = botonCubit.state;
    // final state = context.watch<DisponibilidadCubit>().state;
    //*****FIN LINEAS  CUBIT */

    Size size = MediaQuery.of(context).size;
    return Column(children: [
      SafeArea(
        child: BlocBuilder<DisponibilidadCubit, DisponibilidadState>
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
                      state.botonDos ? Colors.purple : Colors.lightGreen,
                ),
                onPressed: () {
                  context
                      .read<DisponibilidadCubit>()
                      .setBotonActivo(BotonActivo.BotonDos);
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
                ),
                onPressed: () {
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
                ),
                onPressed: () {
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
      ),
      Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(size.width * 0.3, size.height * 0.15),
              ),
              onPressed: () {
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
              ),
              onPressed: () {
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
              ),
              onPressed: () {
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
    ]);
  }
}
