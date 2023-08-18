import 'package:flutter/material.dart';

class Botonera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
    Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(size.width * 0.3, size.height * 0.15),
            ),
            onPressed: () {
              // Acción del botón
            },
            child: Text('2',
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
            child: Text('4',
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
            child: Text('5',
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
            ),
            onPressed: () {
              // Acción del botón
            },
            child: Text('6',
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
            child: Text('7',
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
            child: Text('8',
            style: TextStyle(
                        fontSize: size.width * 0.1,
                        color: Colors.white,
                      ),
                    ),
          ),
          
        ],
      ),
    ),
  ]
  );
  }
}
