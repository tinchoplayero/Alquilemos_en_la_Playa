import '../feature/lista_huespedes/models/cubit/huesped_lista_cubit.dart';
import 'package:alquilemos_en_la_playa/services/database/lib/database_service.dart';
import 'package:alquilemos_en_la_playa/services/database/lib/repo/database_repository_impl.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../firebase_options.dart';

class ListaHuespedes extends StatelessWidget {
  const ListaHuespedes({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HuespedListaCubit(
        DatabaseRepositoryImpl(),
      ),
      child: MuestraHuespedes(),
    );
  }
}

class MuestraHuespedes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      BlocBuilder<HuespedListaCubit, HuespedListState>(
          bloc: BlocProvider.of<HuespedListaCubit>(context)..getHuespedes(),
          builder: (context, state) {
            return (state.loading)
                ? CircularProgressIndicator()
                : Center(
                    child: Placeholder(
                      child: ListView.builder(
                          itemCount: state.huespedLista.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(state.huespedLista[index].nombre+" "+state.huespedLista[index].apellido),
                              
                            );
                          }),
                    ),
                  );
          })
    ]);
  }
}
