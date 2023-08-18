import 'package:flutter/material.dart';

class AppTheme {
  ThemeData temaAlquilemos() => ThemeData(
    primaryColor: barraInferior,
    colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.purple, accentColor: Colors.deepPurple),

    textTheme: TextTheme(
      bodyMedium: TextStyle(
      fontFamily: 'Lobster',
      fontSize: 40, // No puedo implementar estos fontSize: size.width * 0.08,
      color: Colors.purple,
    ),
    ),
  );

}

/*final Color barraInferior = Color(
  Colors.purple as int
);*/

 final barraInferior = Colors.purple;