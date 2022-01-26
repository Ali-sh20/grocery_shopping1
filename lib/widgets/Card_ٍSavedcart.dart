import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hexcolor/hexcolor.dart';

import 'Divider.dart';
import 'TextStore.dart';

class Card_Savedcart extends StatefulWidget {
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

  final String colorcircle;
  Card_Savedcart(
      {required this.text1,
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
      required this.colorcircle});

  @override
  _Card_SavedcartState createState() => _Card_SavedcartState();
}

class _Card_SavedcartState extends State<Card_Savedcart> {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: HexColor('#FAFAFA'),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4))),
        margin: EdgeInsets.zero,
        elevation: 5,
        child: Container(
            height: 200,
            width: double.infinity,
            child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  children: [
                    Row(children: [
                      CircleAvatar(
                          backgroundColor: HexColor(widget.colorcircle),
                          radius: 20,
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                          )),
                      SizedBox(width: 25),
                      Padding(
                        padding: const EdgeInsets.only(top: 19),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextStore(
                                  text: widget.text1,
                                  fontsize: widget.fontsize1,
                                  fontfamily: 'Roboto',
                                  fontWeight: widget.fontWeight1,
                                  hexcolor: widget.hexcolor1),
                              SizedBox(height: 8),
                              TextStore(
                                  text: widget.text2,
                                  fontsize: widget.fontsize2,
                                  fontfamily: 'Roboto',
                                  fontWeight: widget.fontWeight2,
                                  hexcolor: widget.hexcolor2),
                              SizedBox(height: 5),
                              TextStore(
                                  text: widget.text3,
                                  fontsize: widget.fontsize3,
                                  fontfamily: 'Roboto',
                                  fontWeight: widget.fontWeight3,
                                  hexcolor: widget.hexcolor3),
                            ]),
                      ),
                      Spacer(),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                showdeletDialog();
                              },
                              icon: Icon(Icons.delete_outline))
                        ],
                      )
                    ]),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.only(left: 16,right: 16),
                      child: MySeparator(color: HexColor('#D8DAE0')),
                    ),
                    SizedBox(height: 16),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Spacer(),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'VIEW CART',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    color: HexColor('#99A0B0')),
                              ),
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                minimumSize: Size(94, 36),
                                primary: HexColor('#ffffff'),
                              )),
                          SizedBox(width: 30),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/Artboard35');
                              },
                              child: Text(
                                'CHECK OUT',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    color: HexColor('#ffffff')),
                              ),
                              style: ElevatedButton.styleFrom(
                                  elevation: 4,
                                  minimumSize: Size(94, 36),
                                  primary: HexColor('#29C17E'),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(4))))),
                          SizedBox(width: 16)
                        ])
                  ],
                ))));
  }
  void showdeletDialog() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              topLeft: Radius.circular(12)),
        ),
        context: context,
        clipBehavior: Clip.antiAlias,
        backgroundColor: HexColor('#ffffff'),
        builder: (context) {
          return Card(
            margin: EdgeInsets.zero,
            child: Container(
              margin: EdgeInsets.zero,
              child: Padding(
                padding: const EdgeInsets.only(top: 22, left: 16, right: 15),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 8),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: HexColor('#F34949'),
                              child: Icon(Icons.delete_rounded,
                                  color: HexColor('#FFFFFF')),
                            )
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextStore(
                                text: 'Remove saved cart',
                                fontsize: 24,
                                fontfamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                hexcolor: '#272A3F'),
                            SizedBox(height: 2),
                            RichText(
                                textAlign: TextAlign.start,
                                text: TextSpan(
                                  text: 'Are you sure you want to\nremove ',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      color: HexColor('#6E7989')),
                                  children: [
                                    TextSpan(
                                        text: 'Vegetables ',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: HexColor('#272A3F'),
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w500,
                                        )),
                                    TextSpan(
                                        text: ' saved cart',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                            color: HexColor('#6E7989'))),
                                  ],
                                )),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 28),
                    Row(children: [
                      Spacer(),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'NO',
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                color: HexColor('#99A0B0')),
                          ),
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            minimumSize: Size(94, 36),
                            primary: HexColor('#ffffff'),
                          )),
                      SizedBox(width: 30),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/');
                          },
                          child: Text(
                            'REMOVE',
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                color: HexColor('#ffffff')),
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 4,
                              minimumSize: Size(94, 36),
                              primary: HexColor('#F34949'),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(4))))),
                    ])
                  ],
                ),
              ),
              width: double.infinity,
              height: 200,
            ),
          );
        });
  }
}
