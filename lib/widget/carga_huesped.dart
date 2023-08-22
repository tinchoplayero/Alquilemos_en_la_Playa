import 'package:flutter/material.dart';

/// Flutter code sample for [TextField].

class CargaDeHuesped extends StatelessWidget {
  const CargaDeHuesped({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * .90,
      child: const Column(
        children: [
          SizedBox(height: 16.0),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Alias',
            ),
          ),
          SizedBox(height: 16.0),
          TextField(
            scrollPadding: EdgeInsets.all(5),
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Teléfono',
            ),
          ),
          SizedBox(height: 16.0),
          TextField(
            scrollPadding: EdgeInsets.all(5),
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nombre',
            ),
          ),
          SizedBox(height: 16.0),
          TextField(
            scrollPadding: EdgeInsets.all(5),
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Teléfono',
            ),
          ),
        ],
      ),
    );
  }
}
