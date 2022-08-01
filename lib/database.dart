import 'dart:io';

import 'package:gameon/ground_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider {
  DBProvider._();
  static final DBProvider db = DBProvider._();

    Database? _database ;


  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await initDB();
   return _database;
 }

  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();

    String path = join(documentsDirectory.path, "testDB.db");
    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
          await db.execute("CREATE TABLE Client ("
              "id INTEGER PRIMARY KEY,"
              "name TEXT,"
              "image TEXT,"
              "location TEXT"
              ")");
        });
  }

  Future<List<GroundModel>> getAllClients() async {
    final db = await database;
    var res = await db!.query("Client");
    List<GroundModel> list =
    res.isNotEmpty ? res.map((c) => GroundModel.fromMap(c)).toList() : [];
    print(list);
    return list;
  }
  newGround(GroundModel groundModel) async {
    final db = await database;
    //get the biggest id in the table
    var table = await db?.query("Client");
    var raw = await db?.rawInsert(
        "INSERT Into Client (id,name,image,location)"
            " VALUES (?,?,?,?)",
        [groundModel.id, groundModel.name, groundModel.image, groundModel.location]);
    return raw;
  }
  deleteClient(int id) async {
    final db = await database;
    return db?.delete("Client", where: "id = ?", whereArgs: [id]);
  }


}