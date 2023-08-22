import 'package:flutter/material.dart';

class DispoTotal extends StatefulWidget {
  @override
  _DispoTotalState createState() => _DispoTotalState();
}

class _DispoTotalState extends State<DispoTotal> {
  double xOffset = 0.0; // Valor de desplazamiento horizontal

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double imageWidth = screenWidth * 7; // Ancho original de la imagen

    // Calcular el ancho de la porción visible de la imagen
    double visibleImageWidth = imageWidth - xOffset;
    if (visibleImageWidth < screenWidth) {
      visibleImageWidth = screenWidth; // Mantener al menos el ancho de la pantalla
    }

    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Center(
          child: Container(
            width: imageWidth,
            child: GestureDetector(
              onHorizontalDragUpdate: (details) {
                setState(() {
                  xOffset += details.delta.dx;
                });
              },
              child: Transform.translate(
                offset: Offset(xOffset, 0.0),
                child: Image.asset(
                  'assets/img/dispoTotal.png',
                  height: screenHeight * 0.85, // La altura se adapta a la pantalla
                  width: imageWidth, // Ancho total de la imagen
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      
    );
  }
}

