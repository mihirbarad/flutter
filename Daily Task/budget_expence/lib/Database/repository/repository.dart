import 'package:sqflite/sqflite.dart';
import 'package:topsBudget/Database/repository/database_connection.dart';

class Repository {
  late DatabaseConnection databaseConnection;

  Repository() {
    databaseConnection = DatabaseConnection();
  }
  static Database? _database;
  Future<Database?> get database async {
    if (_database != null) {
      return _database;
    } else {
      _database = await databaseConnection.setDatabase();
      return _database;
    }
  }

  insertHistory(table, data) async {
    var connection = await database;
    print(" Insert _------history");

    return await connection?.insert(table, data);
  }

  insertExpence(table, data) async {
    var connection = await database;
    print(" Insert _------expence");

    return await connection?.insert(table, data);
  }

  insertBudget(table, data) async {
    var connection = await database;
    print(" Insert _------budget");

    return await connection?.insert(table, data);
  }

  selectMyHistory(table) async {
    var conncetion = await database;
    print("<---------data fetch send--------->");
    return await conncetion?.rawQuery("select * from $table");
  }

  selectMyExpence(table) async {
    var conncetion = await database;
    print("<---------data fetch send--------->");
    return await conncetion?.rawQuery("select * from $table");
  }

  selectMyBudget(table) async {
    var conncetion = await database;
    print("<---------data fetch send--------->");
    return await conncetion?.rawQuery("select * from $table");
  }

  deleteMyBudget(table, itemID) async {
    var conncetion = await database;
    return await conncetion
        ?.rawDelete('DELETE FROM $table WHERE id = ?', [itemID]);
  }

  fetchEntrybymonth(table, monthname) async {
    var conncetion = await database;
    return await conncetion?.query(table,
        columns: ['id', 'amount', 'title', 'date', 'time'],
        where: 'title = ?',
        whereArgs: [monthname]);
  }
}
