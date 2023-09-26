import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../forms_input/basic_data_num.dart';
import '../forms_input/basic_data_text.dart';
import '../forms_input/email.dart';

part 'formulario_state.dart';

class FormularioCubit extends Cubit<FormularioState> {
  FormularioCubit() : super(FormularioState());

  void cambiarNumero(String deptoElegido) {
    emit(state.copyWith(
      deptoSeleccionado: deptoElegido,
    )); 
  }

  void emailChanged(String value) {
    final email = EmailInput.dirty(value);
    emit(state.copyWith(
      email: email,
      status: Formz.validate([
        email,
        //state.passwordInput,
      ]),
    ));
  }

  void aliasChanged(String value) {
    final texto = TextoInput.dirty();
    emit(state.copyWith(
      alias: texto,
      status: Formz.validate([
        texto,
        ]),
    ));
  }

  void nombreChanged(String value) {
    final texto = TextoInput.dirty();
    emit(state.copyWith(
      nombre: texto,
      status: Formz.validate([
        texto,
        ]),
    ));
  }
 
  void apellidoChanged(String value) {
    final texto = TextoInput.dirty();
    emit(state.copyWith(
      apellido: texto,
      status: Formz.validate([
        texto,
        ]),
    ));
  }

  void telefonoChanged(String value) {
    final numero = NumeroInput.dirty();
    emit(state.copyWith(
      telefono: numero,
      status: Formz.validate([
        numero,
        ]),
    ));
  }

  
}
