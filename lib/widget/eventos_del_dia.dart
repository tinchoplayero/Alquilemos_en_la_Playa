import 'package:alquilemos_en_la_playa/theme/theme.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class EventosDelDia extends StatelessWidget {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Próximos Ingresos",
        style: titulosSecundario,),
        SizedBox(height: 8,),
        FutureBuilder<DocumentSnapshot>(
          future: firestore.collection("Huespedes").doc("huesped-id").get(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator(); 
            } else if (snapshot.hasError) {
              return Text("Error: ${snapshot.error}");
            } else if (!snapshot.hasData) {
              return Text("No hay datos disponibles.");
            } else {
              // ACCEDEMOS A LOS DATOS
              final data = snapshot.data!.data() as Map<String, dynamic>;
              final depto = data['depto'];
              final nombre = data['nombre'];
              final apellido = data['apellido'];
              final timestamp = data['diaDeIngreso'] as Timestamp;
              final fechaYHora = timestamp.toDate();
              final formato = DateFormat('dd/MM/yyyy HH:mm'); // Ajusta el formato según tus preferencias
              final fechaYHoraFormateada = formato.format(fechaYHora);

              // MUESTRA LOS DATOS OBTENIDOS DE LA BD
              return Column(
                children: [
                  Text("Depto: $depto ""$nombre"+" "+"$apellido"+" "+"$fechaYHoraFormateada""Hs")
                  //Text("Nombre: $nombre"),
                  //Text("Apellido: $apellido"),
                  //Text("Día y Hora de Ingreso: $fechaYHoraFormateada"),
                ],
              );
            }
          },
        ),
      ],
    );
  }
}



