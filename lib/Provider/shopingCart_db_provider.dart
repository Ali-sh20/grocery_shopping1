
import 'package:flutter/material.dart';
import 'package:grocery_shopping1/Storge/Controller/shopingCart_db_controller%20.dart';
import 'package:grocery_shopping1/models/shopingCart.dart';

class ShoppingCartDBProvider extends ChangeNotifier{
  List<shopingCart> ShopingCart = [];
  ShopingCartDbController _shoppingCartsDbController = ShopingCartDbController();

  Future<bool> create(shopingCart shoppingCart) async {
    dynamic id = await _shoppingCartsDbController.create(shoppingCart);
    if (id != 0) {
      shoppingCart.id=id;
      ShopingCart.add(shoppingCart);
      notifyListeners();
      return true;
    }
    return false;
  }

  Future read() async {
    ShopingCart = await _shoppingCartsDbController.read();
    notifyListeners();
  }

  Future<bool> Update(shopingCart updatedShoppingCart) async {
    bool update = await _shoppingCartsDbController.update(updatedShoppingCart);
    if (update) {
      int index =
          ShopingCart.indexWhere((shoppingCarts) => shoppingCarts.id == updatedShoppingCart.id);
      if (index != -1) {
        ShopingCart[index] = updatedShoppingCart;
        notifyListeners();
        return true;
      }
    }
    return false;
  }

  Future<bool> delete(int id) async {
    bool deleted = await _shoppingCartsDbController.delete(id);

    if (deleted) {
      ShopingCart.removeWhere((shoppingCarts) => shoppingCarts.id == id);
      notifyListeners();
      return true;
    }
    return false;
  }
}
