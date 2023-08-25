import 'package:alquilemos_en_la_playa/huesped/huesped.dart';

abstract class DatabaseRepository {
  List<Huesped> getHuespedes();
  List<Huesped> addHuesped(Huesped huesped);
  List<Huesped> removerHuesped(int id);
}
