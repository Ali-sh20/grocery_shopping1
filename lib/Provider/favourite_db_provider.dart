
import 'package:flutter/material.dart';
import 'package:grocery_shopping1/Storge/Controller/favourite_db_controller.dart';
import 'package:grocery_shopping1/models/favourite.dart';
class favouriteCartDBProvider extends ChangeNotifier{
  List<Favourite> favourites = [];
  favouriteDbController _favouriteDbController = favouriteDbController();

  Future<bool> create(Favourite favourite) async {
    dynamic id = await _favouriteDbController.create(favourite);
    if (id != 0) {
      favourite.id=id;
      favourites.add(favourite);
      notifyListeners();
      return true;
    }
    return false;
  }

  Future read() async {
    favourites = await _favouriteDbController.read();
    notifyListeners();
  }

  Future<bool> Update(Favourite updatedFavourites) async {
    bool update = await _favouriteDbController.update(updatedFavourites);
    if (update) {
      int index =
      favourites.indexWhere((favourite) => favourite.id == updatedFavourites.id);
      if (index != -1) {
        favourites[index] = updatedFavourites;
        notifyListeners();
        return true;
      }
    }
    return false;
  }



  Future<bool> delete(int id) async {
    bool deleted = await _favouriteDbController.delete(id);
    if (deleted) {
      favourites.removeWhere((favourite) => favourite.id == id);
      notifyListeners();
      return true;
    }
    return false;
  }
}
