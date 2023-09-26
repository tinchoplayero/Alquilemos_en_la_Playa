import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../../services/database/lib/repo/database_repository_impl.dart';
import 'package:meta/meta.dart';

import '../../models/huesped.dart';

part 'huesped_lista_state.dart';

class HuespedListaCubit extends Cubit<HuespedListState> {
  HuespedListaCubit(this._databaseRepository) : super(HuespedListState());

  final DatabaseRepository _databaseRepository;

  void getHuespedes() async {
    emit(state.copyWith(loading: true));

    List<Huesped> huespedLista = await _databaseRepository.getHuespedes();

    emit(
      state.copyWith(
        loading: false,
        huespedLista: huespedLista,
      ),
    );
  }

  void saveHuesped() async {
    emit(state.copyWith(loading: true));

    await _databaseRepository.saveHuesped();

    emit(state.copyWith(loading: false));
  }
}