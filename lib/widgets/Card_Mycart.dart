import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:grocery_shopping1/Provider/shopingCart_db_provider.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

import 'TextStore.dart';

class Card_Mycart extends StatefulWidget {
  final String text1;
  final double fontsize1;
  final FontWeight fontWeight1;
  final String hexcolor1;
  final double text2;
  final double fontsize2;
  final FontWeight fontWeight2;
  final String hexcolor2;
  final String text3;
  final double fontsize3;
  final FontWeight fontWeight3;
  final String hexcolor3;
  final String text4;
  final double fontsize4;
  final FontWeight fontWeight4;
  final String hexcolor4;
  final String pathimage;
  final double width;
  late double total;
  final dynamic? index;
  late  double amount;


  Card_Mycart({
    required this.width,
    required this.pathimage,
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
    required this.text4,
    required this.fontsize4,
    required this.fontWeight4,
    required this.hexcolor4,
     this.index,
    required this.amount,
    required this.total,


  });

  @override
  _Card_MycartState createState() => _Card_MycartState();
}

class _Card_MycartState extends State<Card_Mycart> {
  double _rate = 4;
  double _CounterKg = 0;


  void _incrementCounter() {
    setState(() {
      widget.amount = widget.amount + 250;
      _CounterKg = widget.amount / 1000;
      widget.total=(widget.amount/1000)*widget.text2;
    });
  }

  void _decrementCounter() {
    setState(() {
      widget.amount = widget.amount - 250;
      _CounterKg = widget.amount / 1000;
      widget.total=(widget.amount/1000)/widget.text2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        color: HexColor('#FFFFFF'),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4))),
        margin: EdgeInsets.zero,
        elevation: 5,
        child: Container(
            height: 135,
            width: double.infinity,
            child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 16),
                child: Row(
                  children: [
                    Column(children: [
                      Row(
                        children: [
                          Image.asset(widget.pathimage),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(children: [
                        Card(
                          color: HexColor('#D8DAE0'),
                          margin: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            child: TextStore(
                                text: widget.text1,
                                fontsize: widget.fontsize1,
                                fontfamily: 'Roboto',
                                fontWeight: widget.fontWeight1,
                                hexcolor: widget.hexcolor1),
                            height: 15,
                            width: 28,
                          ),
                        ),
                        SizedBox(width: 10),
                        TextStore(
                            text: 'RS. ${widget.text2}',
                            fontsize: widget.fontsize2,
                            fontfamily: 'Roboto',
                            fontWeight: widget.fontWeight2,
                            hexcolor: widget.hexcolor2),
                      ])
                    ]),
                    SizedBox(width: 16),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              TextStore(
                                  text: 'RS. ${widget.total}',
                                  fontsize: widget.fontsize3,
                                  fontfamily: 'Roboto',
                                  fontWeight: widget.fontWeight3,
                                  hexcolor: widget.hexcolor3),
                              SizedBox(width: widget.width),
                              IconButton(
                                  iconSize: 24,
                                  padding: EdgeInsets.zero,
                                  onPressed: () {
                                    showdeletDialog();
                                  },
                                  icon: Icon(
                                    Icons.delete_outlined,
                                    color: HexColor('#D8DAE0'),
                                  ))
                            ],
                          ),
                          Row(
                            children: [
                              TextStore(
                                  text: widget.text4,
                                  fontsize: widget.fontsize4,
                                  fontfamily: 'Roboto',
                                  fontWeight: widget.fontWeight4,
                                  hexcolor: widget.hexcolor4),
                            ],
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    padding: EdgeInsets.zero,
                                    iconSize: 30,
                                    onPressed: _decrementCounter,
                                    icon: Icon(Icons.remove_circle_outline,
                                        color: HexColor('#99A0B0'))),
                                SizedBox(width: 20),
                                TextStore(
                                    text: widget.amount < 1000
                                        ? '${widget.amount} g'
                                        : '${widget.amount/1000} Kg',
                                    fontsize: 18,
                                    fontfamily: 'Roboto',
                                    fontWeight: FontWeight.bold,
                                    hexcolor: '#99A0B0'),
                                SizedBox(width: 20),
                                IconButton(
                                    padding: EdgeInsets.zero,
                                    iconSize: 30,
                                    onPressed: _incrementCounter,
                                    icon: Icon(Icons.add_circle_outline,
                                        color: HexColor('#99A0B0'))),
                              ]),
                        ]),
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
                                text: 'Remove an item',
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
                                        text: 'Red Onions (500g)',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: HexColor('#272A3F'),
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w500,
                                        )),
                                    TextSpan(
                                        text: ' from\nyour shopping cart?',
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
                          onPressed: () async{
                            Navigator.pop(context);
                            await deleteMycart(widget.index);
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
              height: 245,
            ),
          );
        });
  }
  Future deleteMycart(int id) async {
    await Provider.of<ShoppingCartDBProvider>(context, listen: false).delete(id);
  }
}
