import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class DatabaseConnection {
  Future<Database> setDatabase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, "budget_expense");

    var database =
        await openDatabase(path, version: 1, onCreate: Createdatabase);
    return database;
  }

  Future<void> Createdatabase(Database database, int version) async {
    print("Database crete");

    String sql =
        "create table income(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, amount integer,Date TEXT ,time TEXT, methord TEXT, bool  TEXT)";

    await database.execute(sql);
    String sql1 =
        "create table expence(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, amount integer,Date TEXT ,time TEXT, methord TEXT, bool  TEXT)";

    await database.execute(sql1);
    String sql2 =
        "create table history(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, amount integer,Date TEXT ,type TEXT, icons TEXT)";

    await database.execute(sql2);
  }
}
