import 'package:cloud_firestore/cloud_firestore.dart';

class Huesped {
  final String nombre;
  final String apellido;
  final String email;
  final String alias;
  final int telefono;

  Huesped({
    required this.nombre,
    required this.apellido,
    required this.email,
    required this.alias,
    required this.telefono,
  });

  factory Huesped.fromDocumentSnapshot(
      DocumentSnapshot<Map<String, dynamic>> doc) {
    return Huesped(
      nombre: doc.data()!['nombre'] ?? '',
      apellido: doc.data()!['apellido'] ?? '',
      email: doc.data()!['apellido'] ?? '',
      alias: doc.data()!['apellido'] ?? '',
      telefono: doc.data()!['telefono'] ?? 0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nombre': nombre,
      'apellido': apellido,
      'email': email,
      'alias': alias,
      'telefono': telefono,
    };
  }
}