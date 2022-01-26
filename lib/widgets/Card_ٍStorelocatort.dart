import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hexcolor/hexcolor.dart';

import 'Divider.dart';
import 'TextStore.dart';

class Card_Storelocator extends StatefulWidget {
  final String text1;
  final double fontsize1;
  final FontWeight fontWeight1;
  final String hexcolor1;
  final String text2;
  final double fontsize2;
  final FontWeight fontWeight2;
  final String hexcolor2;

  final String colorcircle;
  Card_Storelocator(
      {required this.text1,
      required this.fontsize1,
      required this.fontWeight1,
      required this.hexcolor1,
      required this.text2,
      required this.fontsize2,
      required this.fontWeight2,
      required this.hexcolor2,
      required this.colorcircle});

  @override
  _Card_StorelocatorState createState() => _Card_StorelocatorState();
}

class _Card_StorelocatorState extends State<Card_Storelocator> {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: HexColor('#FAFAFA'),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4))),
        margin: EdgeInsets.zero,
        elevation: 5,
        child: Container(
            height: 190,
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
                            Icons.location_on_sharp,
                            color: Colors.white,
                          )),
                      SizedBox(width: 16),
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
                              SizedBox(height: 11),
                              TextStore(
                                  text: widget.text2,
                                  fontsize: widget.fontsize2,
                                  fontfamily: 'Roboto',
                                  fontWeight: widget.fontWeight2,
                                  hexcolor: widget.hexcolor2),
                            ]),
                      ),
                    ]),
                    Spacer(),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Spacer(),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/Artboard35');
                              },
                              child: Text(
                                'DIRECTION',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    color: HexColor('#ffffff')),
                              ),
                              style: ElevatedButton.styleFrom(
                                  elevation: 4,
                                  minimumSize: Size(134, 36),
                                  primary: HexColor('#55ACEE'),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(4))))),
                          SizedBox(width: 8),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/Artboard35');
                              },
                              child: Text(
                                'CALL',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    color: HexColor('#ffffff')),
                              ),
                              style: ElevatedButton.styleFrom(
                                  elevation: 4,
                                  minimumSize: Size(98, 36),
                                  primary: HexColor('#01D28E'),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(4))))),
                          SizedBox(width: 16)
                        ]),
                    SizedBox(height: 10)
                  ],
                ))));
  }
}
