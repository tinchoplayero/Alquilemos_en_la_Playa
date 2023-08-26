import 'package:flutter/material.dart';
import 'package:alquilemos_en_la_playa/theme/theme.dart';

class EventosDelDia extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // Recibir Lista de Ingresos
    // Recibir una Lista de Egresos
    return Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:[ //width: size.width * 0.70,
                       Text("Ingresos"),
                       SizedBox(height: 16.0),
                       
                       Container(
                         child: TextField(
                            readOnly: true, // Deshabilita la edición
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Depto 2 - Liliana, 11:00hs Pax: 2 + 1',
                            ),
                          ),
                       ),
                       SizedBox(height: 16.0),
                       Container(
                         child: TextField(
                            readOnly: true, // Deshabilita la edición
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Depto 4 - Raul, 11:30hs Pax: 1 + 2',
                            ),
                          ),
                       ),
                       SizedBox(height: 20.0),
                       Text("Egresos"),
                       SizedBox(height: 16.0),
                       Container(
                         child: TextField(
                            readOnly: true, // Deshabilita la edición
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Depto 2 - Agustina, 09:00hs Pax: 2',
                            ),
                          ),
                       ),
                       SizedBox(height: 16.0),
                       Container(
                         child: TextField(
                            readOnly: true, // Deshabilita la edición
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Dept 6 - Emiliano, 07:00hs Pax: 3',
                            ),
                          ),
                       ),
                     
                       

                    ]
                  ),
                );
  }
}