import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:alquilemos_en_la_playa/disponibilidad.dart';
import 'package:alquilemos_en_la_playa/main.dart';
import 'package:alquilemos_en_la_playa/home_page.dart';

class AppRouter{
  final GoRouter _router;

  AppRouter()
    : _router = GoRouter(
      navigatorKey: GlobalKey<NavigatorState>(),
      initialLocation: "/pagina-inicio",
      routes: [
        GoRoute(
          name: MainApp.name,
          path: "/pagina-inicio",
          //builder: (context, state) => MainApp(),
        ),
        GoRoute(
          name: Disponibilidad.name,
          path: "/pagina-disponibilidad",
          //builder: (context, state) => Disponibilildad(),
        ),
      ],
    )

  GoRouter get router {
    return _router;
  }

}