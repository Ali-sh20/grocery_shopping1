import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'TextStore.dart';

class Card_question extends StatelessWidget {
  final String text1;
  final String text2;
  Card_question({
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        color: HexColor('#FAFAFA'),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4))),
        margin: EdgeInsets.zero,
        elevation: 5,
        child: Container(
            height: 215,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextStore(
                        text: text1,
                        fontsize: 15,
                        fontfamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        hexcolor: '#272A3F'),
                    SizedBox(height: 11),
                    Expanded(
                      child: TextStore(
                          text: text2,
                          fontsize: 13,
                          fontfamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          hexcolor: '#6E7989'),
                    )
                  ]),
            )));
  }
}
