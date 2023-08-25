import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'disponibilidad_state.dart';

class DisponibilidadCubit extends Cubit<DisponibilidadState> {
  DisponibilidadCubit() : super(DisponibilidadInitial());
}
