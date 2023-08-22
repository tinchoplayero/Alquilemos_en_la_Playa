import 'package:flutter/material.dart';

class Calendario extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/img/calendario.JPG',
                  width: size.width * 0.80,
                ),
              ],
            );
  }
}
