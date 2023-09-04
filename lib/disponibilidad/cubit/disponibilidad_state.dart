part of 'disponibilidad_cubit.dart';

class DisponibilidadState extends Equatable {
  final bool botonDos;
  final bool botonCuatro;
  final bool botonCinco;
  final bool botonSeis;
  final bool botonSiete;
  final bool botonOcho;
  final int botonDepto;
  //final String deptoSeleccionado;

  DisponibilidadState({
    this.botonDos = true,
    this.botonCuatro = false,
    this.botonCinco = false,
    this.botonSeis = false,
    this.botonSiete = false,
    this.botonOcho = false,
    this.botonDepto = 2,
    //this.deptoSeleccionado = '0',
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
        //deptoSeleccionado,
      ];

  DisponibilidadState copyWith({
    bool? botonDos,
    bool? botonCuatro,
    bool? botonCinco,
    bool? botonSeis,
    bool? botonSiete,
    bool? botonOcho,
    int? botonDepto,
    //String? deptoSeleccionado,
  }) {
    return DisponibilidadState(
      botonDos: botonDos ?? this.botonDos,
      botonCuatro: botonCuatro ?? this.botonCuatro,
      botonCinco: botonCinco ?? this.botonCinco,
      botonSeis: botonSeis ?? this.botonSeis,
      botonSiete: botonSiete ?? this.botonSiete,
      botonOcho: botonOcho ?? this.botonOcho,
      botonDepto: botonDepto ?? this.botonDepto,
      //deptoSeleccionado: deptoSeleccionado ?? this.deptoSeleccionado,
    );
  }
}
