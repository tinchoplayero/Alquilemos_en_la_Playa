import 'package:flutter/material.dart';
import 'package:datetime_picker_field_platform/datetime_picker_field_platform.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../disponibilidad/cubit/disponibilidad_cubit.dart';

class FormularioIngreso extends StatelessWidget {
  const FormularioIngreso({super.key});

  @override
  Widget build(BuildContext context) {
    return FormularioHuesped();
  }
}

/*void _showPopupMenu(BuildContext context) async {
    final deptoElegido = await showMenu(
      context: context,
      position: RelativeRect.fill,
      items: [2, 4, 5, 6, 7, 8].map((numero) {
        return PopupMenuItem(
          value: numero,
          child: Text('$numero'),
        );
      }).toList(),
    );
    //context.read<DisponibilidadCubit>().cambiarNumero();
    //context.read<DisponibilidadCubit>().cambiarNumero(deptoElegido);
    print(deptoElegido);
  }*/

class FormularioHuesped extends StatefulWidget {
  const FormularioHuesped({super.key});

  @override
  State<FormularioHuesped> createState() => _FormularioHuespedState();
}

class _FormularioHuespedState extends State<FormularioHuesped> {
  int? deptoElegido; // Variable para almacenar el departamento seleccionado

  void _showPopupMenu(BuildContext context) async {
    final seleccionarDepto = await showMenu(
      context: context,
      initialValue: 0,
      position: RelativeRect.fill,
      items: [2, 4, 5, 6, 7, 8].map((numero) {
        return PopupMenuItem(
          value: numero,
          child: Text('$numero'),
        );
      }).toList(),
    );
    

    if (seleccionarDepto != null) {
      setState(() {
        deptoElegido = seleccionarDepto; // Actualizar el departamento elegido
      });
    }
    context.read<DisponibilidadCubit>().cambiarNumero(deptoElegido.toString());
    print(deptoElegido);

  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: SizedBox(
        width: size.width * 0.9,
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ///****************SECTOR FORMULARIO GRILLA CON NUMERO DE DEPTO ***************** */
              Row(
                children: [
                  Expanded(
                    child:
                        BlocBuilder<DisponibilidadCubit, DisponibilidadState>(
                      builder: (context, state) {
                        return Column(
                          children: [
                            SizedBox(height: 16.0),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize:
                                    Size(size.width * 0.3, size.height * 0.15),
                              ),
                              onPressed: () {
                                _showPopupMenu(context); // aparece el menu
                                
                              },
                              child: Text(
                                state.deptoSeleccionado,
                                style: TextStyle(
                                  fontSize: size.width * 0.2,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(height: 16.0),
                        TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Alias',
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Ingrese un Alias';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 16.0),
                        TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Telefono',
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Ingrese un Teléfono';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              ///************** SECTOR  FORMULARIO DATOS DE HUESPED************************************** */

              SizedBox(height: 16.0),
              TextFormField(
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
              ),
              SizedBox(height: 16.0),
              TextFormField(
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
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'e-mail',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Ingrese un e-mail';
                  }
                  return null;
                },
              ),

              ///************** SECTOR  FORMULARIO  DIA Y HORA INGRESOS Y EGRESOS ************************************** */
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: DateTimeFieldPlatform(
                      mode: DateMode.date,
                      decoration: const InputDecoration(
                        hintText: 'Dia de Ingreso',
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.calendar_today),
                      ),
                      maximumDate:
                          DateTime.now().add(const Duration(days: 720)),
                      minimumDate: DateTime.utc(2009),
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'Ingrese el dia';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(width: 16.0), // Espacio entre los campos
                  Expanded(
                    child: DateTimeFieldPlatform(
                      mode: DateMode.time,
                      decoration: const InputDecoration(
                        hintText: 'Hora de Ingreso',
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.access_time),
                      ),
                      maximumDate: DateTime.now().add(const Duration(hours: 2)),
                      minimumDate:
                          DateTime.now().subtract(const Duration(hours: 2)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: DateTimeFieldPlatform(
                      mode: DateMode.date,
                      decoration: const InputDecoration(
                        hintText: 'Dia de Egreso',
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.calendar_today),
                      ),
                      maximumDate:
                          DateTime.now().add(const Duration(days: 720)),
                      minimumDate: DateTime.utc(2009),
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'Ingrese el dia';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(width: 16.0), // Espacio entre los campos
                  Expanded(
                    child: DateTimeFieldPlatform(
                      mode: DateMode.time,
                      decoration: const InputDecoration(
                        hintText: 'Hora de Egreso',
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.access_time),
                      ),
                      maximumDate: DateTime.now().add(const Duration(hours: 2)),
                      minimumDate:
                          DateTime.now().subtract(const Duration(hours: 2)),
                    ),
                  ),
                ],
              ),

              ///************** SECTOR  FORMULARIO  PAXS Y PRECIO ************************************** */
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Adultos',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Ingrese la cantidad de adultos';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(width: 16.0), // Espacio entre los campos
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Niños',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Ingrese la cantidad de Niños';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Precio Total',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Ingrese el precio total';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(width: 16.0), // Espacio entre los campos
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Seña Depositada',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Ingrese la seña';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize:
                            Size(size.width * 0.45, size.height * 0.05),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // cargar a la base de datos
                        }
                      },
                      child: const Text('Agregar'),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize:
                            Size(size.width * 0.45, size.height * 0.05),
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // cargar a la base de datos
                        }
                      },
                      child: const Text(
                        'Cancelar',
                        style: TextStyle(color: Colors.purple),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
