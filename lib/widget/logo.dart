import 'package:flutter/material.dart';

class Logo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                     Image.asset(
                      'assets/img/homepage_logo.png',
                      width: size.width * 0.70,
                    ),
                  ]
                );
  }
}