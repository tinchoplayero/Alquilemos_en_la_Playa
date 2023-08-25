part of 'disponibilidad_cubit.dart';

class DisponibilidadState extends Equatable {
  final bool botonDos;
  final bool botonCuatro;
  final bool botonCinco;
  final bool botonSeis;
  final bool botonSiete;
  final bool botonOcho;

  DisponibilidadState({
    this.botonDos = false,
    this.botonCuatro = false,
    this.botonCinco = false,
    this.botonSeis = false,
    this.botonSiete = false,
    this.botonOcho = false,
  });

  @override
  List<Object?> get props => [
        botonDos,
        botonCuatro,
        botonCinco,
        botonSeis,
        botonSiete,
        botonOcho,
      ];

  DisponibilidadState copyWith({
    bool? botonDos,
    bool? botonCuatro,
    bool? botonCinco,
    bool? botonSeis,
    bool? botonSiete,
    bool? botonOcho,
  }) {
    return DisponibilidadState(botonDos: botonDos ?? this.botonDos);
    return DisponibilidadState(botonCuatro: botonCuatro ?? this.botonCuatro);
    return DisponibilidadState(botonCinco: botonCinco ?? this.botonCinco);
    return DisponibilidadState(botonSeis: botonSeis ?? this.botonSeis);
    return DisponibilidadState(botonSiete: botonSiete ?? this.botonSiete);
    return DisponibilidadState(botonOcho: botonOcho ?? this.botonOcho);
  }
}
