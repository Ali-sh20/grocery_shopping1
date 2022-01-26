import 'package:flutter/material.dart';
import 'package:grocery_shopping1/widgets/Card_%D9%8DSavedcart.dart';
import 'package:hexcolor/hexcolor.dart';

class Artboard32 extends StatefulWidget {
  const Artboard32({Key? key}) : super(key: key);

  @override
  _Artboard32State createState() => _Artboard32State();
}

class _Artboard32State extends State<Artboard32> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#29C17E'),
        title: Text(
          'Saved cart',
          style: TextStyle(
              fontSize: 20,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              color: HexColor('#FFFFFF')),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 16, left: 16, top: 16),
        child: Column(
          children: [
            Card_Savedcart(
                text1: 'Vegetables ',
                fontsize1: 20,
                fontWeight1: FontWeight.w500,
                hexcolor1: '#272A3F',
                text2: 'Subtotal Rs. 1,820.00',
                fontsize2: 16,
                fontWeight2: FontWeight.w500,
                hexcolor2: '#272A3F',
                text3: 'Total items: 04',
                fontsize3: 14,
                fontWeight3: FontWeight.w400,
                hexcolor3: '#6E7989',
                colorcircle: '#7874F7'),
            SizedBox(height: 8),
            Card_Savedcart(
                text1: 'Groceries ',
                fontsize1: 20,
                fontWeight1: FontWeight.w500,
                hexcolor1: '#272A3F',
                text2: 'Subtotal Rs. 5,300.00',
                fontsize2: 16,
                fontWeight2: FontWeight.w500,
                hexcolor2: '#272A3F',
                text3: 'Total items: 15',
                fontsize3: 14,
                fontWeight3: FontWeight.w400,
                hexcolor3: '#6E7989',
                colorcircle: '#55ACEE'),
          ],
        ),
      ),
    );
  }
}
