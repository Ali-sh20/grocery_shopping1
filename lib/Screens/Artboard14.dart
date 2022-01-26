import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_shopping1/Provider/favourite_db_provider.dart';
import 'package:grocery_shopping1/Screens/Artboard21.dart';
import 'package:grocery_shopping1/models/favourite.dart';
import 'package:grocery_shopping1/widgets/Card_Artboard14.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

class Artboard14 extends StatefulWidget {
  const Artboard14({Key? key}) : super(key: key);

  @override
  _Artboard14State createState() => _Artboard14State();
}

class _Artboard14State extends State<Artboard14> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#F4F7FA'),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 185, left: 190),
            child: Image.asset('images/Path.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 189, left: 16, right: 28),
            child: ListView(
              padding: EdgeInsets.all(10),
              children: [
                Row(
                  children: [
                    TextStore(
                        text: 'Grocery Member Deals',
                        fontsize: 14,
                        fontfamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        hexcolor: '#272A3F'),
                    Spacer(),
                    TextStore(
                        text: 'View all',
                        fontsize: 12,
                        fontfamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        hexcolor: '#99A0B0'),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_forward_ios_outlined,
                        color: HexColor('#99A0B0'), size: 15)
                  ],
                ),
                SizedBox(height: 12),
                SizedBox(
                  height: 186,
                  child: GridView(
                    scrollDirection: Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisSpacing: 8,
                        mainAxisExtent: 120),
                    children: [
                      Card(
                        elevation: 15,
                        color: HexColor('#FFFFFF'),
                        margin: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '');
                          },
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
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
                                              text: '100G',
                                              fontsize: 8,
                                              fontfamily: 'Roboto',
                                              fontWeight: FontWeight.w700,
                                              hexcolor: '#6E7989'),
                                          height: 15,
                                          width: 27.6,
                                        ),
                                      ),
                                      Spacer(),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.favorite_outline_rounded,
                                            color: HexColor('#D8DAE0'),
                                          )),
                                      //IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outlined))
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset('images/Rectangle.png')
                                    ],
                                  ),
                                  Spacer(),
                                  SizedBox(height: 7.3),
                                  Row(
                                    children: [
                                      SizedBox(width: 8),
                                      TextStore(
                                          text: 'Ginger',
                                          fontsize: 12,
                                          fontfamily: 'Roboto',
                                          fontWeight: FontWeight.w500,
                                          hexcolor: '#6E7989'),
                                    ],
                                  ),
                                  SizedBox(height: 4),
                                  Row(
                                    children: [
                                      SizedBox(width: 8),
                                      TextStore(
                                          text: 'Rs.60.00',
                                          fontsize: 12,
                                          fontfamily: 'Roboto',
                                          fontWeight: FontWeight.w500,
                                          hexcolor: '#272A3F'),
                                    ],
                                  ),
                                  SizedBox(height: 13),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 15,
                        color: HexColor('#FFFFFF'),
                        margin: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '');
                          },
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
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
                                              text: '100G',
                                              fontsize: 8,
                                              fontfamily: 'Roboto',
                                              fontWeight: FontWeight.w700,
                                              hexcolor: '#6E7989'),
                                          height: 15,
                                          width: 27.6,
                                        ),
                                      ),
                                      Spacer(),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.favorite_outlined),
                                          color: HexColor('#29C17E'))
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset('images/Rectangle2.png')
                                    ],
                                  ),
                                  SizedBox(height: 7.3),
                                  Row(
                                    children: [
                                      SizedBox(width: 8),
                                      TextStore(
                                          text: 'Garlic',
                                          fontsize: 12,
                                          fontfamily: 'Roboto',
                                          fontWeight: FontWeight.w500,
                                          hexcolor: '#6E7989'),
                                    ],
                                  ),
                                  SizedBox(height: 4),
                                  Row(
                                    children: [
                                      SizedBox(width: 8),
                                      TextStore(
                                          text: 'Rs.40.00',
                                          fontsize: 12,
                                          fontfamily: 'Roboto',
                                          fontWeight: FontWeight.w500,
                                          hexcolor: '#272A3F'),
                                    ],
                                  ),
                                  SizedBox(height: 13),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 15,
                        color: HexColor('#FFFFFF'),
                        margin: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '');
                          },
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
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
                                              text: '1KG',
                                              fontsize: 8,
                                              fontfamily: 'Roboto',
                                              fontWeight: FontWeight.w700,
                                              hexcolor: '#6E7989'),
                                          height: 15,
                                          width: 27.6,
                                        ),
                                      ),
                                      Spacer(),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.favorite_outline_rounded,
                                            color: HexColor('#D8DAE0'),
                                          )),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset('images/Rectangle3.png')
                                    ],
                                  ),
                                  Spacer(),
                                  SizedBox(height: 7.3),
                                  Row(
                                    children: [
                                      SizedBox(width: 8),
                                      TextStore(
                                          text: 'Red Onions',
                                          fontsize: 12,
                                          fontfamily: 'Roboto',
                                          fontWeight: FontWeight.w500,
                                          hexcolor: '#6E7989'),
                                    ],
                                  ),
                                  SizedBox(height: 4),
                                  Row(
                                    children: [
                                      SizedBox(width: 8),
                                      TextStore(
                                          text: 'Rs.260.00',
                                          fontsize: 12,
                                          fontfamily: 'Roboto',
                                          fontWeight: FontWeight.w500,
                                          hexcolor: '#272A3F'),
                                    ],
                                  ),
                                  SizedBox(height: 13),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 430, left: 16, right: 28),
            child: ListView(
              padding: EdgeInsets.all(10),
              children: [
                Row(
                  children: [
                    TextStore(
                        text: 'Grocery Deals',
                        fontsize: 14,
                        fontfamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        hexcolor: '#272A3F'),
                    Spacer(),
                    TextStore(
                        text: 'View all',
                        fontsize: 12,
                        fontfamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        hexcolor: '#99A0B0'),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_forward_ios_outlined,
                        color: HexColor('#99A0B0'), size: 15)
                  ],
                ),
                SizedBox(height: 12),
                SizedBox(
                  height: 186,
                  child: GridView(
                    scrollDirection: Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisSpacing: 8,
                        mainAxisExtent: 120),
                    children: [
                      Card_Artboard14(
                        image: 'images/Rectangle5.png',
                        price: 490.00,
                        name: 'Carrot',
                        weight: '1KG',
                      ),
                      Card_Artboard14(
                        image: 'images/Rectangle4.png',
                        price: 1100.00,
                        name: 'Bell Pepper Red',
                        weight: '1KG',
                      ),
                      Card_Artboard14(
                        image: 'images/Rectangle6.png',
                        price: 490.00,
                        name: 'Grapes - Green',
                        weight: '100G',
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}


