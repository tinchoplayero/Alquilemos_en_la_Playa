part of 'disponibilidad_cubit.dart';

class DisponibilidadState extends Equatable {
  final bool botonDos;
  final bool botonCuatro;
  final bool botonCinco;
  final bool botonSeis;
  final bool botonSiete;
  final bool botonOcho;
  final int botonDepto;

  DisponibilidadState({
    this.botonDos = true,
    this.botonCuatro = false,
    this.botonCinco = false,
    this.botonSeis = false,
    this.botonSiete = false,
    this.botonOcho = false,
    this.botonDepto = 2,
  });

  @override
  List<Object?> get props => [
        botonDos,
        botonCuatro,
        botonCinco,
        botonSeis,
        botonSiete,
        botonOcho,
        botonDepto,
      ];

  DisponibilidadState copyWith({
    bool? botonDos,
    bool? botonCuatro,
    bool? botonCinco,
    bool? botonSeis,
    bool? botonSiete,
    bool? botonOcho,
    int? botonDepto,
  }) {
    return DisponibilidadState(
      botonDos: botonDos ?? this.botonDos,
      botonCuatro: botonCuatro ?? this.botonCuatro,
      botonCinco: botonCinco ?? this.botonCinco,
      botonSeis: botonSeis ?? this.botonSeis,
      botonSiete: botonSiete ?? this.botonSiete,
      botonOcho: botonOcho ?? this.botonOcho,
      botonDepto: botonDepto ?? this.botonDepto,
    );
  }
}
