import '../cubit/formulario_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../constant/input_decorations.dart';

class CampoTelefono extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FormularioCubit, FormularioState>(
      builder: (context, state) {
        return TextFormField(
          onChanged: (value) {
            print('Valor recibido en telefono: ${value}');
            final telefonoParseado = int.tryParse(value);
            context.read<FormularioCubit>().telefonoChanged(value);
          },
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Telefono',
          ),
          validator: (String? value) {
            if (value != null && value.isNotEmpty) {
              final contieneCaracteres = RegExp(r'[0-9]').hasMatch(value);

              if (contieneCaracteres) {
                // La cadena contiene caracteres.
                print('El nro de tel es válido');
              } else {
                // La cadena no contiene caracteres.
                print('El campo contiene caracteres no válidos');
              }
            } else {
              // El valor es nulo o está vacío.
              print('Ingrese un valor para el teléfono.');
            }
            return null;
          },
        );
      },
    );
  }
}
