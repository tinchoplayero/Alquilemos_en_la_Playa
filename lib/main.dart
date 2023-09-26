import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_core/firebase_core.dart';

//import 'package:alquilemos_en_la_playa/disponibilidad.dart';
import 'home/view/main_nav.dart';
//import 'package:alquilemos_en_la_playa/home_page.dart';
import 'package:alquilemos_en_la_playa/routes/app_router.dart';
import 'firebase_options.dart';
import 'theme/theme.dart';


void main() async {
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  
  const MainApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    final _router = AppRouter();
    return  MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationProvider: _router.router.routeInformationProvider,
      routeInformationParser: _router.router.routeInformationParser,
      routerDelegate: _router.router.routerDelegate,
      theme: temaAlquilemos,
      
      
    );
  }
  

}
