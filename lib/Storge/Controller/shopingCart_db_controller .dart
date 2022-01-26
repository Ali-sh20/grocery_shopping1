import 'package:grocery_shopping1/Storge/db_provider.dart';
import 'package:grocery_shopping1/models/shopingCart.dart';
import 'package:sqflite/sqflite.dart';

import '../db_opreastions.dart';




class ShopingCartDbController implements DbOperations<shopingCart>{
  Database _database;
  ShopingCartDbController(): _database=DBProvider().database;


  Future<int> create(shopingCart object)async {
    // TODO: implement create
     return await _database.insert('shopping_carts',object.toMap());
  }

  @override
  Future<bool> delete(int id)async {
    // TODO: implement delete
    var count=await  _database.delete('shopping_carts',where: 'id = ?',whereArgs: [id]);
    return count>0;
  }

  @override
  Future<List<shopingCart>> read() async{
    // TODO: implement read
    var data = await _database.query('shopping_carts');
    return data.map((rowMap) => shopingCart.fromMap(rowMap)).toList();
  }

  @override
  Future<bool> update(shopingCart object) async{
    // TODO: implement update

    var count =await _database.update('shopping_carts', object.toMap(),
        where: 'id= ?',whereArgs: [object.id]);
    return count>0;
  }

}