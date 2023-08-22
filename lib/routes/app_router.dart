import 'package:alquilemos_en_la_playa/home_page.dart';
import 'package:alquilemos_en_la_playa/nuevo_huesped.dart';
import 'package:alquilemos_en_la_playa/vista_general.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:alquilemos_en_la_playa/disponibilidad.dart';


class AppRouter {
  final GoRouter _router;

  AppRouter()
      : _router = GoRouter(
          navigatorKey: GlobalKey<NavigatorState>(),
          initialLocation: "/pagina-inicio",
      routes: [
        GoRoute(
          name: HomePage.name,
          path: "/pagina-inicio",
          builder: (context, state) => HomePage(),
        ),
        GoRoute(
          name: Disponibilidad.name,
          path: "/pagina-disponibilidad",
          builder: (context, state) => Disponibilidad(),
        ),
        GoRoute(
          name: VistaGeneral.name,
          path: "/vista-genral",
          builder: (context, state) => VistaGeneral(),
        ),
        GoRoute(
          name: NuevoHuesped.name,
          path: "/nuevo-huesped",
          builder: (context, state) => NuevoHuesped(),
        ),
      ],
    );

  // Error A function body must be provided
  GoRouter get router {
    return _router;
  }

}