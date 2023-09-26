part of 'huesped_lista_cubit.dart';

class HuespedListState extends Equatable {
  final List<Huesped> huespedLista;
  final bool loading;

  const HuespedListState({
    this.huespedLista = const [],
    this.loading = false,
  });

  @override
  List<Object?> get props => [
        huespedLista,
        loading,
      ];

  HuespedListState copyWith({
    List<Huesped>? huespedLista,
    bool? loading,
  }) {
    return HuespedListState(
      huespedLista: huespedLista ?? this.huespedLista,
      loading: loading ?? this.loading,
    );
  }
}