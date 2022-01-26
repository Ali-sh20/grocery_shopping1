import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider{
  static final DBProvider _instance=DBProvider._();
  late Database _database;

  factory DBProvider(){
    return _instance;
  }

  DBProvider._();
Database get database => _database;

  Future initDatabase() async{
      Directory directory=await getApplicationDocumentsDirectory();
      String path = join(directory.path,'app_db.sql');

     _database= await openDatabase(
        path,
        version: 1,
          onOpen:(Database db){},
        onCreate: (Database db, int version) async{
          await db.execute('CREATE TABLE shopping_carts('
              'id INTEGER PRIMARY KEY AUTOINCREMENT,'
              'name TEXT,'
              'image TEXT,'
              'weight TEXT,'
              'amount INTEGER,'
              'total INTEGER,'
              'price INTEGER'
              ')');
          await db.execute('CREATE TABLE Favourite('
              'id INTEGER PRIMARY KEY AUTOINCREMENT,'
              'name TEXT,'
              'image TEXT,'
              'weight TEXT,'
              'price INTEGER'
              ')');
        },
        onUpgrade: (Database db, int oldVersion, int newVersion){},
        onDowngrade: (Database db,int oldVersion,int newVersion) {},

      );

  }
}
