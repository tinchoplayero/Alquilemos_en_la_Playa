import 'package:flutter/material.dart';

class EventosDelDia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    // Recibir Lista de Ingresos
    // Recibir una Lista de Egresos
    return Column(children: [
      Placeholder(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            Text("Ingresos"),
            Container(
              height: 50,
              //color: Colors.amber[600],
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.black,
                    //width: 2.0,
                  )),
              child: const Center(
                  child: Text('Depto 2 - Liliana, 11:00hs Pax: 2 + 1')),
            ),
            Container(
              height: 50,
              //color: Colors.amber[600],
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.black,
                    //width: 2.0,
                  )),
              child: const Center(
                  child: Text('Depto 4 - Raul, 11:30hs Pax: 1 + 2')),
            ),
            Text("Egresos"),
            Container(
              height: 50,
              //color: Colors.amber[600],
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.black,
                    //width: 2.0,
                  )),
              child: const Center(
                  child: Text('Depto 2 - Agustina, 09:00hs Pax: 2')),
            ),
            Container(
              height: 50,
              //color: Colors.amber[600],
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.black,
                    //width: 2.0,
                  )),
              child: const Center(
                  child: Text('Dept 6 - Emiliano, 07:00hs Pax: 3')),
            ),
          ],
        ),
      ))
    ]);
  }
}
