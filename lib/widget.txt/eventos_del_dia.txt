import 'package:flutter/material.dart';

class EventosDelDia extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                       Image.asset(
                        'assets/img/agenda.png',
                        width: size.width * 0.70,
                        ),
                    ]
                  ),
                );
  }
}