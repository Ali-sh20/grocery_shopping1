import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'TextStore.dart';

class Card_menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12))),
      margin: EdgeInsets.zero,
      elevation: 15,
      child: Container(
        height: 515,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 38, left: 16, right: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.close,
                          color: HexColor('#99A0B0'), size: 30),
                    ),
                    SizedBox(width: 32),
                    TextStore(
                      text: 'Grocery shopping app',
                      fontsize: 20,
                      fontfamily: 'Roboto',
                      hexcolor: '#272A3F',
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row_menu(
                    image: 'images/Group11280.png',
                    title: 'Order history',
                    path: '/Artboard64'),
                SizedBox(height: 16),
                Row_menu(
                    image: 'images/Group11281.png',
                    title: 'Track orders',
                    path: '/Artboard65'),
                SizedBox(height: 16),
                Row_menu(
                    image: 'images/Group11282.png',
                    title: 'Saved carts',
                    path: '/Artboard32'),
                SizedBox(height: 16),
                Row_menu(
                    image: 'images/Group11283.png',
                    title: 'Store locator',
                    path: '/Artboard66'),
                SizedBox(height: 16),
                Row_menu(
                    image: 'images/Group11284.png',
                    title: 'Terms & conditions',
                    path: '/Artboard68'),
                SizedBox(height: 16),
                Row_menu(
                  image: 'images/Group11285.png',
                  title: 'Help',
                ),
                SizedBox(height: 16),
                Row_menu(
                    image: 'images/Group11286.png',
                    title: 'Got a question?',
                    path: '/Artboard69'),
                SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Row_menu extends StatelessWidget {
  final String image;
  final String title;
  final String? path;
  Row_menu({
    required this.image,
    required this.title,
    this.path,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, path!);
      },
      child: Row(children: [
        Image.asset(image),
        SizedBox(width: 16),
        TextStore(
          text: title,
          fontsize: 16,
          fontfamily: 'Roboto',
          hexcolor: '#272A3F',
          fontWeight: FontWeight.w500,
        ),
      ]),
    );
  }
}
