import 'package:flutter/material.dart';

final ThemeData temaAlquilemos = ThemeData(
  primaryColor: Colors.purple,
 colorScheme: ColorScheme.fromSwatch(
  primarySwatch: Colors.purple,
  accentColor: Colors.deepPurple
  ),
);

final TextStyle titulosPrincipales = TextStyle(
  fontFamily: 'Lobster',
  fontSize: 40,  // No puedo implementar estos fontSize: size.width * 0.08,
  color: Colors.purple,
);

/*final Color barraInferior = Color(
  Colors.purple as int
);*/

 final barraInferior = "Colors.purple";