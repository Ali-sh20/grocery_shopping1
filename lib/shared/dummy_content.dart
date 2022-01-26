import 'package:flutter/material.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';

class DummyContent extends StatelessWidget {
  final bool reverse;
  final ScrollController? controller;

  const DummyContent({Key? key, this.controller, this.reverse = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: HexColor('#FFFFFF'),
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(12), bottomLeft: Radius.circular(12)),
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
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/');
                          },
                          child: Image.asset('images/Group 1141.png'))
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
              SizedBox(height: 29),
              Row(
                children: [
                  CircleAvatar(
                      backgroundColor: HexColor('#BEF1C9'),
                      radius: 35,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/Artboard18');
                          },
                          child: Image.asset('images/Group 1143.png'))),
                  Spacer(),
                  CircleAvatar(
                      backgroundColor: HexColor('#BEF1C9'),
                      radius: 35,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/');
                          },
                          child: Image.asset('images/Group 1149.png'))),
                  Spacer(),
                  CircleAvatar(
                      backgroundColor: HexColor('#BEF1C9'),
                      radius: 35,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/');
                          },
                          child: Image.asset('images/Group 1144.png'))),
                  Spacer(),
                  CircleAvatar(
                      backgroundColor: HexColor('#BEF1C9'),
                      radius: 35,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/');
                          },
                          child: Image.asset('images/Group 1145.png'))),
                ],
              ),
              SizedBox(height: 7),
              Row(
                children: [
                  TextStore(
                      text: 'Beverages',
                      fontsize: 12,
                      fontfamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      hexcolor: '#6E7989'),
                  SizedBox(width: 30),
                  TextStore(
                      text: 'Pharmacy',
                      fontsize: 12,
                      fontfamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      hexcolor: '#6E7989'),
                  SizedBox(width: 25),
                  TextStore(
                      text: 'Frozen Food',
                      fontsize: 12,
                      fontfamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      hexcolor: '#6E7989'),
                  SizedBox(width: 14),
                  TextStore(
                      text: 'Vegetables',
                      fontsize: 12,
                      fontfamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      hexcolor: '#6E7989'),
                ],
              ),
              SizedBox(height: 29),
              Row(
                children: [
                  CircleAvatar(
                      backgroundColor: HexColor('#BEF1C9'),
                      radius: 35,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/');
                          },
                          child: Image.asset('images/Group 1146.png'))),
                  Spacer(),
                  CircleAvatar(
                      backgroundColor: HexColor('#BEF1C9'),
                      radius: 35,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/');
                          },
                          child: Image.asset('images/Group 1147.png'))),
                  Spacer(),
                  CircleAvatar(
                      backgroundColor: HexColor('#BEF1C9'),
                      radius: 35,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/');
                          },
                          child: Image.asset('images/Group 1148.png'))),
                  Spacer(),
                  CircleAvatar(
                      backgroundColor: HexColor('#BEF1C9'),
                      radius: 35,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/');
                          },
                          child: Image.asset('images/Path 3071.png'))),
                ],
              ),
              SizedBox(height: 7),
              Row(
                children: [
                  SizedBox(width: 15),
                  TextStore(
                      text: 'Meat',
                      fontsize: 12,
                      fontfamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      hexcolor: '#6E7989'),
                  SizedBox(width: 70),
                  TextStore(
                      text: 'Fish',
                      fontsize: 12,
                      fontfamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      hexcolor: '#6E7989'),
                  SizedBox(width: 50),
                  TextStore(
                      text: 'Homeware',
                      fontsize: 12,
                      fontfamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      hexcolor: '#6E7989'),
                  SizedBox(width: 45),
                  TextStore(
                      text: 'Fruits',
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
    );
  }
}
