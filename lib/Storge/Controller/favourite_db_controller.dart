import 'package:grocery_shopping1/Storge/db_provider.dart';
import 'package:grocery_shopping1/models/favourite.dart';
import 'package:sqflite/sqflite.dart';

import '../db_opreastions.dart';



class favouriteDbController implements DbOperations<Favourite>{
  Database _database;
  favouriteDbController(): _database=DBProvider().database;


  Future<int> create(Favourite object)async {
    // TODO: implement create
    return await _database.insert('Favourite',object.toMap());
  }

  @override
  Future<bool> delete(int id)async {
    // TODO: implement delete
    var count=await  _database.delete('Favourite',where: 'id = ?',whereArgs: [id]);
    return count>0;
  }

  @override
  Future<List<Favourite>> read() async{
    // TODO: implement read
    var data = await _database.query('Favourite');
    return data.map((rowMap) => Favourite.fromMap(rowMap)).toList();
  }

  @override
  Future<bool> update(Favourite object) async{
    // TODO: implement update

    var count =await _database.update('Favourite', object.toMap(),
        where: 'id= ?',whereArgs: [object.id]);
    return count>0;
  }

}