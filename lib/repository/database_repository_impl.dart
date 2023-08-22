import 'package:alquilemos_en_la_playa/huesped/huesped.dart';
import 'package:alquilemos_en_la_playa/repository/database_repository.dart';
import 'package:alquilemos_en_la_playa/repository/database_service.dart';

class DatabaseRepositoryImpl implements DatabaseRepository {
  DatabaseService service = DatabaseService();

  @override
  List<Huesped> addHuesped(Huesped huesped) {
    return service.addHuesped(huesped);
  }

  @override
  List<Huesped> getHuespeds() {
    return service.getHuespeds();
  }

  @override
  List<Huesped> removerHuesped(int id) {
    return service.removerHuesped(id);
  }
}
