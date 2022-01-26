import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:grocery_shopping1/Provider/shopingCart_db_provider.dart';
import 'package:grocery_shopping1/models/shopingCart.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

class Artboard21 extends StatefulWidget {

  final String name;
  final String image;
  final String weight;
  final double price;

  Artboard21(
  {
    required this.name,
    required this.image,
    required this.weight,
    required this.price,
  }
      );

  @override
  _Artboard21State createState() => _Artboard21State();
}

class _Artboard21State extends State<Artboard21> {

  double _rate=4;
  double _counter = 0;
  double amount=0;
  double total=0;
  void _incrementCounter() {
    setState(() {
      _counter=_counter+250;
      amount=_counter;
      total=(amount/1000)*widget.price;
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter=_counter-250;
      amount=_counter;
      total=(amount/1000)/widget.price;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor('#FFFFFF'),
        body: Padding(
          padding: const EdgeInsets.only(top:38,left:16),
          child: Column(
            children: [
              Row(children: [
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/HomeScreen');
                    },
                    icon: Icon(Icons.keyboard_backspace_sharp,
                        color: HexColor('#99A0B0'), size: 30)),
                SizedBox(width: 32),
                TextStore(
                    text: 'Grocery Deals',
                    fontsize: 20,
                    fontfamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    hexcolor: '#272A3F'),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_outline_rounded,
                    color: HexColor('#99A0B0'),
                  ),
                )
              ]),
              SizedBox(height:46),
              Image.asset(widget.image),
              SizedBox(height:20),
              Card(
                color: HexColor('#D8DAE0'),
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(2),
                ),
                child: Container(
                  alignment: Alignment.center,
                  child: TextStore(
                      text: widget.weight,
                      fontsize: 10,
                      fontfamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      hexcolor: '#6E7989'),
                  height: 20,
                  width: 37,
                ),
              ),
              SizedBox(height:17),
              TextStore(
                  text: 'Rs. ${total}',
                  fontsize: 24,
                  fontfamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  hexcolor: '#272A3F'),
              SizedBox(height:6),
              TextStore(
                  text: widget.name,
                  fontsize:16,
                  fontfamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  hexcolor: '#6E7989'),
              SizedBox(height:26),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/Artboard24');
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RatingBar.builder(
                      initialRating: 4,
                      minRating: 1,
                     // unratedColor: Colors.red,
                      ignoreGestures: true,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemSize: 30,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 3.6),
                      itemBuilder: (context, _a) => Icon(
                        Icons.star_rounded,
                        color: HexColor('#FFAC41'),
                      ),
                      onRatingUpdate: (rating) {
                        setState(() {
                          _rate=rating;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height:7),
              Card(
                 color: HexColor('#FFE6C5'),
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(10),
                ),
                child: Container(
                  alignment: Alignment.center,
                  child: TextStore(
                      text: '4.5(20)',
                      fontsize: 12,
                      fontfamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      hexcolor: '#FFAC41'),
                  height: 20,
                  width: 60,
                ),
              ),
              SizedBox(height:30),
              Divider(
                color: HexColor('#D8DAE0'),
                indent: 16,
                endIndent: 16,
                thickness: .5,
              ),
              SizedBox(height:17),
              TextStore(
                  text: 'Quantity',
                  fontsize:16,
                  fontfamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  hexcolor: '#99A0B0'),
              SizedBox(height:6),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                children: [
                   IconButton(
                     iconSize: 50,
                    onPressed: _decrementCounter,
                    icon: Icon(Icons.remove_circle_outline,color: HexColor('#99A0B0'))),
                 SizedBox(width: 33),
                 TextStore(
                      text:  _counter < 1000
                          ? '${_counter} g'
                          : '${_counter/1000} Kg',
                      fontsize:30,
                      fontfamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      hexcolor: '#434658'),
                 SizedBox(width: 33),
                  IconButton(
                      iconSize: 50,
                      onPressed: _incrementCounter,
                      icon: Icon(Icons.add_circle_outline,color: HexColor('#99A0B0'))),
                ]
              ),
              SizedBox(height:32),
              ElevatedButton(
                  onPressed: () {
                    saveShoppingCart();
                    Navigator.pop(context);
                  },
                  child: Text(
                    'ADD TO CART',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        color: HexColor('#ffffff')),
                  ),
                  style: ElevatedButton.styleFrom(
                      elevation: 5,
                      minimumSize: Size(134, 36),
                      primary: HexColor('#29C17E'),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(4))))),
              SizedBox(height:22),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Text(
                    'BUY NOW',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        color: HexColor('#29C17E')),
                  ),
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      minimumSize: Size(134, 36),
                      primary: HexColor('#ffffff'),
                      )),
            ],
          ),
        ));
  }
  Future saveShoppingCart() async{
    bool created= await Provider.of<ShoppingCartDBProvider>(context,listen: false).create(shoppingCart);
    if(created){
      print('Created Successfully');
    }
  }
  shopingCart get shoppingCart{
    shopingCart shoppingCart=shopingCart();
    shoppingCart.name=widget.name;
    shoppingCart.image=widget.image;
    shoppingCart.price=widget.price;
    shoppingCart.weight=widget.weight;
    shoppingCart.amount=amount;
    shoppingCart.total=total;
    return shoppingCart;

  }
}
