import 'dart:math';

import 'package:flutter/material.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';

class DefaultGrabbing2 extends StatelessWidget {
  final Color color;
  final bool reverse;

  const DefaultGrabbing2(
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
        padding: const EdgeInsets.only(top: 13, left: 16, right: 16),
        child: Column(
          children: [
            Row(children: [
              TextStore(
                  text: 'Subtotal (4 items)',
                  fontsize: 14,
                  fontfamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  hexcolor: '#272A3F'),
              Spacer(),
              TextStore(
                  text: 'Rs. 1,820.00',
                  fontsize: 16,
                  fontfamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  hexcolor: '#272A3F'),
            ]),
            SizedBox(height: 11),
            Row(children: [
              TextStore(
                  text: 'Promotion discounts',
                  fontsize: 14,
                  fontfamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  hexcolor: '#6E7989'),
              Spacer(),
              TextStore(
                  text: 'Rs. -220.00',
                  fontsize: 14,
                  fontfamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  hexcolor: '#6E7989'),
            ]),
          ],
        ),
      ),
      height: 70,
      width: double.infinity,
    );
  }
}
