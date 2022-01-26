import 'package:flutter/material.dart';
import 'package:grocery_shopping1/Provider/shopingCart_db_provider.dart';
import 'package:grocery_shopping1/widgets/Card_Mycart.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

class Artboard20 extends StatefulWidget {
  const Artboard20({Key? key}) : super(key: key);

  @override
  _Artboard20State createState() => _Artboard20State();
}

class _Artboard20State extends State<Artboard20> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ShoppingCartDBProvider>(
        builder: (
            BuildContext context, ShoppingCartDBProvider value, Widget? child
            ) {
          if (value.ShopingCart.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/Group1087.png'),
                  SizedBox(height:11),
                  TextStore(
                      text: 'Your shopping cart is empty ',
                      fontsize: 18,
                      fontfamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      hexcolor: '#272A3F'),
                ],
              ),
            );
          }else{
            return Padding(
              padding: const EdgeInsets.only(top: 115, left: 16, right: 16),
              child: ListView.builder(
                itemCount: value.ShopingCart.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Card_Mycart(
                      total: value.ShopingCart[index].total,
                      index: value.ShopingCart[index].id,
                      width: 80,
                      text1: value.ShopingCart[index].weight,
                      fontsize1: 8,
                      fontWeight1: FontWeight.bold,
                      hexcolor1: '#6E7989',
                      text2:value.ShopingCart[index].price,
                      fontsize2: 11.1,
                      fontWeight2: FontWeight.w500,
                      hexcolor2: '#272A3F',
                      text3: 'Rs. ${value.ShopingCart[index].amount}',
                      fontsize3: 18,
                      fontWeight3: FontWeight.bold,
                      hexcolor3: '#272A3F',
                      text4: value.ShopingCart[index].name,
                      fontsize4: 14,
                      fontWeight4: FontWeight.w500,
                      hexcolor4: '#6E7989',
                      pathimage: value.ShopingCart[index].image,
                      amount: value.ShopingCart[index].amount,
                    ),
                  );
                },),
            );
          }
        },




      );
  }
}

