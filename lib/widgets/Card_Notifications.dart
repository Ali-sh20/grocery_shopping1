import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'TextStore.dart';


class Card_Notifications extends StatelessWidget {

  final double sizebox;
  final String text1;
  final double fontsize1;
  final FontWeight fontWeight1;
  final String hexcolor1;
  final String text2;
  final double fontsize2;
  final FontWeight fontWeight2;
  final String hexcolor2;
  final String text3;
  final double fontsize3;
  final FontWeight fontWeight3;
  final String hexcolor3;

  Card_Notifications({
    required this.sizebox,
    required this.text1,
    required this.fontsize1,
    required this.fontWeight1,
    required this.hexcolor1,
    required this.text2,
    required this.fontsize2,
    required this.fontWeight2,
    required this.hexcolor2,
    required this.text3,
    required this.fontsize3,
    required this.fontWeight3,
    required this.hexcolor3,
  }
      );
  @override
  Widget build(BuildContext context) {
    return Card(
        color: HexColor('#FAFAFA'),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4))),
        margin: EdgeInsets.zero,
        elevation: 5,
        child: Container(
            height: 95,
            width: double.infinity,
            child: Padding(
                padding:
                const EdgeInsets.only(top: 12, left: 16, right: 16),
                child: Row(
                  children: [
                    Column(
                        children: [
                      SizedBox(height: 4),
                      CircleAvatar(
                        backgroundColor: HexColor('#BEF1C9'),
                        radius: 20,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.notifications_outlined),
                          color: HexColor('#29C17E'),
                        ),
                      ),
                    ]),
                    SizedBox(width: 16.1),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Row(
                        children: [
                          TextStore(
                              text: text1,
                              fontsize: fontsize1,
                              fontfamily: 'Roboto',
                              fontWeight: fontWeight1,
                              hexcolor: hexcolor1),
                          SizedBox(width: sizebox),
                          TextStore(
                              text: text2,
                              fontsize: fontsize2,
                              fontfamily: 'Roboto',
                              fontWeight: fontWeight2,
                              hexcolor: hexcolor2),
                        ],
                      ),
                      SizedBox(height:11),
                      Row(
                        children: [
                          TextStore(
                              text: text3,
                              fontsize: fontsize3,
                              fontfamily: 'Roboto',
                              fontWeight: fontWeight3,
                              hexcolor: hexcolor3),
                        ],
                      ),

                    ]),
                  ],
                ))));
  }
}
