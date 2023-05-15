import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class dbhelper {
  Database? database;

  Future<Database> checkdb() async {
    if (database != null) {
      return database!;
    } else {
      return await initdb();
    }
  }

  Future<Database> initdb() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, "kamo.db");
    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        String query =
            "CREATE TABLE incomeexpence ( id INTEGER PRIMARY KEY AUTOINCREMENT , category TEXT , amount TEXT , date TEXT , paytypes TEXT , stats TEXT)";

        db.execute(query);
      },
    );
  }

  insertdb({
    required String category,
    required String amount,
    required String stats,
    required String date,
    required String paytypes,
  }) async {
    database = await checkdb();
    database!.insert(
      "incomeexpence",
      {
        "category": category,
        "amount": amount,
        "date": date,
        "paytypes": paytypes,
        "stats": stats,
      },
    );
  }

 Future<List<Map>>  readdata()
  async {
    database = await checkdb();
    String quary = "SELECT * FROM incomeexpence";
    List<Map> list = await database!.rawQuery(quary);
    return list;
  }
}
