import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'disponibilidad_state.dart';

class DisponibilidadCubit extends Cubit<DisponibilidadState> {
  //DisponibilidadCubit(super.initialState);
  //DisponibilidadCubit(DisponibilidadState initialState) : super(initialState);
  DisponibilidadCubit() : super(DisponibilidadState());

 /* void setBotonActivo(BotonActivo botonActivo) {
    emit(state.copyWith(
      botonDos: botonActivo == BotonActivo.BotonDos,
      botonCuatro: botonActivo == BotonActivo.BotonCuatro,
      botonCinco: botonActivo == BotonActivo.BotonCinco,
      botonSeis: botonActivo == BotonActivo.BotonSeis,
      botonSiete: botonActivo == BotonActivo.BotonSiete,
      botonOcho: botonActivo == BotonActivo.BotonOcho,
         ));
  }*/

  void botondoschanged(){
    emit(state.copyWith(
      botonDos: true, //- !state.botonDos,
      botonCuatro: false,
      botonCinco: false,
      botonSeis: false,
      botonSiete: false,
      botonOcho: false,
    ));
  }
  void botoncuatrochanged(){
    emit(state.copyWith(
      botonDos: false,
      botonCuatro: true, 
      botonCinco: false,
      botonSeis: false,
      botonSiete: false,
      botonOcho: false,
    ));
  }
  void botoncincochanged(){
    emit(state.copyWith(
      botonDos: false,
      botonCuatro: false, 
      botonCinco: true,
      botonSeis: false,
      botonSiete: false,
      botonOcho: false,
    ));
  }
  void botonseischanged(){
    emit(state.copyWith(
      botonDos: false,
      botonCuatro: false, 
      botonCinco: false,
      botonSeis: true,
      botonSiete: false,
      botonOcho: false,
    ));
  }
  void botonsietechanged(){
    emit(state.copyWith(
      botonDos: false,
      botonCuatro: false, 
      botonCinco: false,
      botonSeis: false,
      botonSiete: true,
      botonOcho: false,
    ));
  }
  void botonochochanged(){
    emit(state.copyWith(
      botonDos: false,
      botonCuatro: false, 
      botonCinco: false,
      botonSeis: false,
      botonSiete: false,
      botonOcho: true,
    ));
  }
}

