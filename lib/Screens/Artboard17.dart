import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';

import 'Artboard12..dart';
import 'Artboard14.dart';

class Artboard17 extends StatefulWidget {
  const Artboard17({Key? key}) : super(key: key);

  @override
  _Artboard17State createState() => _Artboard17State();
}

class _Artboard17State extends State<Artboard17>
    {

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: .305,
      child: Scaffold(
        backgroundColor: HexColor('#E1E4E9'),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 128),
              Card(
                color: HexColor('#FFFFFF'),
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12)),
                ),
                child: Container(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, left: 16, right: 16),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            TextStore(
                                text: 'All Categories',
                                fontsize: 14,
                                fontfamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                hexcolor: '#272A3F'),
                          ],
                        ),
                        SizedBox(height: 12),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: HexColor('#BEF1C9'),
                              radius: 35,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.home),
                                color: HexColor('#29C17E'),
                              ),
                            ),
                            Spacer(),
                            CircleAvatar(
                              backgroundColor: HexColor('#BEF1C9'),
                              radius: 35,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.shopping_cart_rounded),
                                color: HexColor('#29C17E'),
                              ),
                            ),
                            Spacer(),
                            CircleAvatar(
                              backgroundColor: HexColor('#BEF1C9'),
                              radius: 35,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.local_bar),
                                color: HexColor('#29C17E'),
                              ),
                            ),
                            Spacer(),
                            CircleAvatar(
                              backgroundColor: HexColor('#BEF1C9'),
                              radius: 35,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.brunch_dining),
                                color: HexColor('#29C17E'),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 7),
                        Row(
                          children: [
                            TextStore(
                                text: 'Household',
                                fontsize: 12,
                                fontfamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                hexcolor: '#6E7989'),
                            SizedBox(width: 36),
                            TextStore(
                                text: 'Grocery',
                                fontsize: 12,
                                fontfamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                hexcolor: '#6E7989'),
                            SizedBox(width: 52),
                            TextStore(
                                text: 'Liquor',
                                fontsize: 12,
                                fontfamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                hexcolor: '#6E7989'),
                            SizedBox(width: 55),
                            TextStore(
                                text: 'Chilled',
                                fontsize: 12,
                                fontfamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                hexcolor: '#6E7989'),
                          ],
                        ),
                        SizedBox(height:29),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: HexColor('#BEF1C9'),
                              radius: 35,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.home),
                                color: HexColor('#29C17E'),
                              ),
                            ),
                            Spacer(),
                            CircleAvatar(
                              backgroundColor: HexColor('#BEF1C9'),
                              radius: 35,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.shopping_cart_rounded),
                                color: HexColor('#29C17E'),
                              ),
                            ),
                            Spacer(),
                            CircleAvatar(
                              backgroundColor: HexColor('#BEF1C9'),
                              radius: 35,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.local_bar),
                                color: HexColor('#29C17E'),
                              ),
                            ),
                            Spacer(),
                            CircleAvatar(
                              backgroundColor: HexColor('#BEF1C9'),
                              radius: 35,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.brunch_dining),
                                color: HexColor('#29C17E'),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 7),
                        Row(
                          children: [
                            TextStore(
                                text: 'Household',
                                fontsize: 12,
                                fontfamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                hexcolor: '#6E7989'),
                            SizedBox(width: 36),
                            TextStore(
                                text: 'Grocery',
                                fontsize: 12,
                                fontfamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                hexcolor: '#6E7989'),
                            SizedBox(width: 52),
                            TextStore(
                                text: 'Liquor',
                                fontsize: 12,
                                fontfamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                hexcolor: '#6E7989'),
                            SizedBox(width: 55),
                            TextStore(
                                text: 'Chilled',
                                fontsize: 12,
                                fontfamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                hexcolor: '#6E7989'),
                          ],
                        ),
                        SizedBox(height:29),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: HexColor('#BEF1C9'),
                              radius: 35,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.home),
                                color: HexColor('#29C17E'),
                              ),
                            ),
                            Spacer(),
                            CircleAvatar(
                              backgroundColor: HexColor('#BEF1C9'),
                              radius: 35,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.shopping_cart_rounded),
                                color: HexColor('#29C17E'),
                              ),
                            ),
                            Spacer(),
                            CircleAvatar(
                              backgroundColor: HexColor('#BEF1C9'),
                              radius: 35,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.local_bar),
                                color: HexColor('#29C17E'),
                              ),
                            ),
                            Spacer(),
                            CircleAvatar(
                              backgroundColor: HexColor('#BEF1C9'),
                              radius: 35,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.brunch_dining),
                                color: HexColor('#29C17E'),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 7),
                        Row(
                          children: [
                            TextStore(
                                text: 'Household',
                                fontsize: 12,
                                fontfamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                hexcolor: '#6E7989'),
                            SizedBox(width: 36),
                            TextStore(
                                text: 'Grocery',
                                fontsize: 12,
                                fontfamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                hexcolor: '#6E7989'),
                            SizedBox(width: 52),
                            TextStore(
                                text: 'Liquor',
                                fontsize: 12,
                                fontfamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                hexcolor: '#6E7989'),
                            SizedBox(width: 55),
                            TextStore(
                                text: 'Chilled',
                                fontsize: 12,
                                fontfamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                hexcolor: '#6E7989'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  height: 406,
                  width: double.infinity,
                ),
              ),
              SizedBox(height: 8),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/HomeScreen');
                },
                child: Image.asset('images/Path3051.png'),
              ),
              SizedBox(height: 8),

            ],
          ),
        ),
      ),
    );
  }
}
