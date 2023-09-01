part of 'formulario_cubit.dart';

class FormularioState extends Equatable {
  final FormzStatus status;
  final TextoInput alias;
  final NumeroInput telefono;
  final TextoInput nombre;
  final TextoInput apellido;
  final EmailInput email;

  FormularioState({
    this.status = FormzStatus.pure,
    this.alias = const TextoInput.pure(),
    this.telefono = const NumeroInput.pure(),
    this.nombre = const TextoInput.pure(),
    this.apellido = const TextoInput.pure(),
    this.email = const EmailInput.pure()
  })

  @override
  List<Object> get props => [alias, telefono, nombre, apellido, email, status];

  FormularioState copyWith({
    FormzStatus? status,
    TextoInput? alias,
    NumeroInput? telefono,
    TextoInput? nombre,
    TextoInput? apellido,
    EmailInput? email,
    

  }){
    return FormularioState(
      status: status ?? this.status,
      alias: alias ?? this.alias,
      telefono: telefono ?? this.telefono,
      nombre: nombre ?? this.nombre,
      apellido: apellido ?? this.apellido,
      email: email ?? this.email,

    )
  
  }

}


