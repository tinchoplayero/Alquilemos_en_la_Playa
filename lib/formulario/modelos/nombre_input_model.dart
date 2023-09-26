import 'package:alquilemos_en_la_playa/formulario/cubit/formulario_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 
class CampoNombre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FormularioCubit, FormularioState>(
      builder: (context, state) {
        return TextFormField(
          onChanged: (value) {
            print('Valor recibido en nombre: ${value}');
            context.read<FormularioCubit>().nombreChanged(value);
          },
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Nombre',
          ),
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              return 'Ingrese un Nombre';
            }
            return null;
          },
        );
      },
    );
  }
}