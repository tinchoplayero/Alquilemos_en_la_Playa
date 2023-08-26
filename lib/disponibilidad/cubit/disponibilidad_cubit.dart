import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'disponibilidad_state.dart';

class DisponibilidadCubit extends Cubit<DisponibilidadState> {
  //DisponibilidadCubit(super.initialState);
  //DisponibilidadCubit(DisponibilidadState initialState) : super(initialState);
  DisponibilidadCubit() : super(DisponibilidadState());

 

  void botondoschanged(){
    emit(state.copyWith(
      botonDos: true, //- !state.botonDos,
      botonCuatro: false,
      botonCinco: false,
      botonSeis: false,
      botonSiete: false,
      botonOcho: false,
      botonDepto: 2,
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
      botonDepto: 4,
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
      botonDepto: 5,
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
      botonDepto: 6,
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
      botonDepto: 7,
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
      botonDepto: 8,
    ));
  }
   

  void cambiarNumero(String deptoElegido) {
    emit(state.copyWith(
      deptoSeleccionado: deptoElegido,
    )); 
  }
}

