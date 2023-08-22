import 'package:alquilemos_en_la_playa/huesped/huesped.dart';

class DatabaseService {
  final List<Huesped> _db = huespedesData;

  List<Huesped> getHuespeds() {
    return _db;
  }

  List<Huesped> addHuesped(Huesped huesped) {
    _db.add(huesped);
    List<Huesped> newHuespedes = _db;
    return newHuespedes;
  }

  List<Huesped> removerHuesped(int id) {
    _db.removeWhere((element) => element.id == id);
    List<Huesped> newHuespedes = _db;
    return newHuespedes;
  }
}

final List<Huesped> huespedesData = [
  Huesped(1, 2, "Lili", 3764491236, "Dominguez", "Liliana", "liliana@dominguez.com", "15/01/2024", "11:00", "30/01/2024", "09:00", 2, 1, 1000, 500),
  Huesped(1, 4, "Ale", 3764491236, "Avalos", "Raul", "raul@avalos.com", "01/01/2024", "11:00", "14/01/2024", "09:00", 1, 2, 1000, 500),
  
];
