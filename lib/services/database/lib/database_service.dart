import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../feature/lista_huespedes/models/huesped.dart';


class DatabaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<List<Huesped>> getHuespedes() async {
    QuerySnapshot<Map<String, dynamic>> huespedesSnapshot =
        await _db.collection('Huespedes').get();

    final List<Huesped> listaHuespedes = huespedesSnapshot.docs.map((doc) {
      return Huesped.fromDocumentSnapshot(doc);
    }).toList();
    return listaHuespedes;
  }

  Future<void> saveHuesped() async {
    final huespedes = [
      {
        'depto': 4,
        'nombre': 'Emiliano',
        'apellido': 'Rotembo',
        'telefono': 3761111111,
        'email':'emiliano@rotembo.com',
        'alias': 'EmiRo'
      },
      {
        'depto': 2,
        'nombre': 'Sofia',
        'apellido': 'Todema',
        'telefono': 1122223333,
        'email':'sofia@todema.com',
        'alias': 'SofiTo'
      },
      {
        'depto': 5,
        'nombre': 'Pablo',
        'apellido': 'DeMaris',
        'telefono': 1145673333,
        'email':'sofia@todema.com',
        'alias': 'SofiTo'
      },
      
    ];

    for (var huesped in huespedes) {
      await _db.collection('Huespedes').add(huesped);
    }
  }
}