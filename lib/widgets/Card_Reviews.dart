import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hexcolor/hexcolor.dart';

import 'TextStore.dart';


class Card_Reviews extends StatefulWidget {
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
  final String pathimage;
  final double initialRating;

  Card_Reviews({
    required this.initialRating,
    required this.pathimage,
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
  _Card_ReviewsState createState() => _Card_ReviewsState();
}

class _Card_ReviewsState extends State<Card_Reviews> {
  double _rate=4;

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
                        child: Image.asset(widget.pathimage)
                      ),
                    ]),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Row(
                        children: [
                          TextStore(
                              text: widget.text1,
                              fontsize: widget.fontsize1,
                              fontfamily: 'Roboto',
                              fontWeight: widget.fontWeight1,
                              hexcolor: widget.hexcolor1),
                          SizedBox(width: widget.sizebox),
                          TextStore(
                              text: widget.text2,
                              fontsize: widget.fontsize2,
                              fontfamily: 'Roboto',
                              fontWeight: widget.fontWeight2,
                              hexcolor: widget.hexcolor2),
                        ],
                      ),
                      SizedBox(height:6),
                      Row(
                            children: [
                              RatingBar.builder(

                                initialRating: widget.initialRating,
                                minRating: 1,
                                // unratedColor: Colors.red,
                                 ignoreGestures: true,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemSize: 20,
                                itemCount: 5,
                                itemPadding: EdgeInsets.symmetric(horizontal: 3.6),
                                itemBuilder: (context, _a) => Icon(
                                  Icons.star_rounded,
                                  color: HexColor('#FFAC41'),
                                ),
                                onRatingUpdate: (rating) {
                                  setState(() {
                                    _rate=rating;
                                  });
                                },
                              ),
                            ],
                          ),
                      SizedBox(height:6.5),
                      Row(
                        children: [
                          TextStore(
                              text: widget.text3,
                              fontsize: widget.fontsize3,
                              fontfamily: 'Roboto',
                              fontWeight: widget.fontWeight3,
                              hexcolor: widget.hexcolor3),
                        ],
                      ),

                    ]),
                  ],
                ))));
  }
}
