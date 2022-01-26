import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TextStore extends StatelessWidget {
  final String text;
  final double fontsize;
  final String fontfamily;
  final FontWeight fontWeight;
  final String hexcolor;
  TextStore(
      {required this.text,
      required this.fontsize,
      required this.fontfamily,
      required this.fontWeight,
      required this.hexcolor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontsize,
          fontFamily: fontfamily,
          fontWeight: fontWeight,
          color: HexColor(hexcolor)),
    );
  }
}
