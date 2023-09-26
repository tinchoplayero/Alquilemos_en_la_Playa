import '../../../../feature/lista_huespedes/models/huesped.dart';
import '../database_service.dart';

class DatabaseRepositoryImpl implements DatabaseRepository {
  DatabaseService service = DatabaseService();

  @override
  Future<List<Huesped>> getHuespedes() {
    return service.getHuespedes();
  }

  @override
  Future<void> saveHuesped() {
    return service.saveHuesped();
  }
}

abstract class DatabaseRepository {
  Future<List<Huesped>> getHuespedes();
  Future<void> saveHuesped();
}