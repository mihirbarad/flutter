// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';
// import 'main.dart';
// import 'package:path_provider/path_provider.dart';

// class DatabaseConnection {
//   Future<Database> setDatabase() async {
//     var directory = await getApplicationDocumentsDirectory();
//     var path = join(directory.path, "mydb");
//     var database =
//         await openDatabase(path, version: 1, onCreate: createDatabase);
//     return database;
//   }

//   Future<void> createDatabase(Database database, int version) async {
//     print("------data base created------");
//     String sql =
//         "CREATE TABLE users (id INTEGER PRIMARY KEY auto_increment, name TEXT,contact text);";
//     await database.execute(sql);
//   }
// }

