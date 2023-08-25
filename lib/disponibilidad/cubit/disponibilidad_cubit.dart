import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'disponibilidad_state.dart';

class DisponibilidadCubit extends Cubit<DisponibilidadState> {
  //DisponibilidadCubit(super.initialState);
  //DisponibilidadCubit(DisponibilidadState initialState) : super(initialState);
  DisponibilidadCubit() : super(DisponibilidadState());

  void setBotonActivo(BotonActivo botonActivo) {
    emit(state.copyWith(
      botonDos: botonActivo == BotonActivo.BotonDos,
      botonCuatro: botonActivo == BotonActivo.BotonCuatro,
      botonCinco: botonActivo == BotonActivo.BotonCinco,
      botonSeis: botonActivo == BotonActivo.BotonSeis,
      botonSiete: botonActivo == BotonActivo.BotonSiete,
      botonOcho: botonActivo == BotonActivo.BotonOcho,
         ));
  }
}
