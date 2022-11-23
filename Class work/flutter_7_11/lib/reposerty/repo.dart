import '../connection.dart';
import 'package:sqflite/sqlite_api.dart';

class Repository {
  late DatabaseConnection _databaseConnection;
  Repository() {
    _databaseConnection = DatabaseConnection();
  }

  static Database? _database;
  Future<Database?> get database async {
    if (_database != null) {
      return _database;
    } else {
      _database = await _databaseConnection.setDatabase();
      return _database;
    }
  }

  insertData(table, data) async {
    var connection = await database;
    print("----Inster $data");
    return await connection?.insert(table, data);
  }

  readData(table) async {
    var connection = await database;
    return await connection!.query(table);
  }

  readSpecificData(table, itemID) async {
    var connection = await database;
    return await connection?.query(table, where: "id = ?", whereArgs: [itemID]);
  }

  updateData(table, data) async {
    var connection = await database;
    return await connection
        ?.update(table, data, where: "id = ?", whereArgs: [data["id"]]);
  }

  deleteData(table, itemid) async {
    var connection = await database;

    return await connection?.delete(table, where: "id = ? ", whereArgs: itemid);
  }
}
