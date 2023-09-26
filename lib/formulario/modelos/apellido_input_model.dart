import '../cubit/formulario_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../constant/input_decorations.dart';

class CampoApellido extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FormularioCubit, FormularioState>(
      builder: (context, state) {
        return TextFormField(
          onChanged: (value) {
            print('Valor recibido en apellido: ${value}');
            context.read<FormularioCubit>().apellidoChanged(value);
          },
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Apellido',
          ),
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              return 'Ingrese un Apellido';
            }
            return null;
          },
        );
      },
    );
  }
}
