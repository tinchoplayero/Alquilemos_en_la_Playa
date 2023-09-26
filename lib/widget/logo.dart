import 'package:flutter/material.dart';

class Logo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
    return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:[
                     Image.asset(
                      'assets/img/homepage_logo.png',
                      width: size.width * 0.175,
                      height: size.height * 0.0625,
                      
                      
                    ),
                  ]
                );
                
  }
}