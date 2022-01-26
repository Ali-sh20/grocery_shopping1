import 'package:flutter/material.dart';
import 'package:grocery_shopping1/widgets/Card_Reviews.dart';
import 'package:hexcolor/hexcolor.dart';

class Artboard24 extends StatefulWidget {
  const Artboard24({Key? key}) : super(key: key);

  @override
  _Artboard24State createState() => _Artboard24State();
}

class _Artboard24State extends State<Artboard24> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#29C17E'),
        title: Text(
          'Reviews',
          style: TextStyle(
              fontSize: 20,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              color: HexColor('#FFFFFF')),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/Artboard25');
            },
            child: SizedBox(child: Image.asset('images/Path2868.png')),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 16, left: 16, top: 16),
        child: Column(
          children: [
            Card_Reviews(
                initialRating: 4,
                pathimage: 'images/Group 1035.png',
                sizebox: 160,
                text1: 'Ella White',
                fontsize1: 16,
                fontWeight1: FontWeight.w500,
                hexcolor1: '#272A3F',
                text2: 'Today',
                fontsize2: 10,
                fontWeight2: FontWeight.bold,
                hexcolor2: '#6E7989',
                text3: 'Great quality & Fresh!',
                fontsize3: 14,
                fontWeight3: FontWeight.w400,
                hexcolor3: '#6E7989'),
            SizedBox(height:8),
            Card_Reviews(
                initialRating: 3,
                pathimage: 'images/Group 1037.png',
                sizebox: 115,
                text1: 'Lily Williams',
                fontsize1: 16,
                fontWeight1: FontWeight.w500,
                hexcolor1: '#272A3F',
                text2: 'Yesterday',
                fontsize2: 10,
                fontWeight2: FontWeight.bold,
                hexcolor2: '#6E7989',
                text3: 'Good quality.',
                fontsize3: 14,
                fontWeight3: FontWeight.w400,
                hexcolor3: '#6E7989'),
            SizedBox(height:8),
            Card_Reviews(
                initialRating: 4,
                pathimage: 'images/JA.png',
                sizebox: 60,
                text1: 'Jack Anderson',
                fontsize1: 16,
                fontWeight1: FontWeight.w500,
                hexcolor1: '#272A3F',
                text2: 'Two weeks ago',
                fontsize2: 10,
                fontWeight2: FontWeight.bold,
                hexcolor2: '#6E7989',
                text3: 'Loved it,price little high but worth it.',
                fontsize3: 14,
                fontWeight3: FontWeight.w400,
                hexcolor3: '#6E7989'),
            SizedBox(height:8),
            Card_Reviews(
                initialRating: 4,
                pathimage: 'images/Group 1039.png',
                sizebox: 108,
                text1: 'Ella White',
                fontsize1: 16,
                fontWeight1: FontWeight.w500,
                hexcolor1: '#272A3F',
                text2: 'Two moths ago',
                fontsize2: 10,
                fontWeight2: FontWeight.bold,
                hexcolor2: '#6E7989',
                text3: 'Fresh!',
                fontsize3: 14,
                fontWeight3: FontWeight.w400,
                hexcolor3: '#6E7989'),
            SizedBox(height:8),
            Card_Reviews(
                initialRating: 4,
                pathimage: 'images/DT.png',
                sizebox: 84,
                text1: 'David Tennant',
                fontsize1: 16,
                fontWeight1: FontWeight.w500,
                hexcolor1: '#272A3F',
                text2: '15 Jan 2020',
                fontsize2: 10,
                fontWeight2: FontWeight.bold,
                hexcolor2: '#6E7989',
                text3: 'Great quality well spent!',
                fontsize3: 14,
                fontWeight3: FontWeight.w400,
                hexcolor3: '#6E7989'),

          ],
        ),
      )




    );
  }
}
