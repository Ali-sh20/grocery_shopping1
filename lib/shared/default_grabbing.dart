import 'dart:math';

import 'package:flutter/material.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';

class DefaultGrabbing extends StatelessWidget {
  final Color color;
  final bool reverse;

  const DefaultGrabbing(
      {Key? key, this.color = Colors.white, this.reverse = false})
      : super(key: key);

  BorderRadius _getBorderRadius() {
    var radius = Radius.circular(12);
    return BorderRadius.only(
      topLeft: reverse ? radius : Radius.zero,
      topRight: reverse ? radius : Radius.zero,
      bottomLeft: reverse ? Radius.zero : radius,
      bottomRight: reverse ? Radius.zero : radius,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            spreadRadius: 10,
            color: Colors.black.withOpacity(.01),
          )
        ],
        borderRadius: _getBorderRadius(),
        color: this.color,
      ),
      child: Transform.rotate(
        angle: reverse ? pi : 0,
        child: Stack(
          children: [
            Align(
              alignment: Alignment(0, -0.5),
              child: _GrabbingIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}

class _GrabbingIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            SizedBox(height:29),
          ],
        ),
      ),
      height: 406,
      width: double.infinity,
    );
  }
}
