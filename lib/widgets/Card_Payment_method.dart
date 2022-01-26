import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'TextStore.dart';


class Card_Payment_method extends StatefulWidget {

  final String name;
  final String password;
  final dynamic month;
  final dynamic year;
  final String NameBank;
  final String image;
  Card_Payment_method(
  {
    required  this.name ,
    required  this.password ,
    required  this.month ,
    required  this.year ,
    required  this.NameBank,
    required  this.image
}
      );
  @override
  _Card_Payment_methodState createState() => _Card_Payment_methodState();
}

class _Card_Payment_methodState extends State<Card_Payment_method> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/Artboard55');
      },
      child: Card(
        color: HexColor('#FAFAFA'),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4))),
        margin: EdgeInsets.zero,
        elevation: 5,
        child: Container(
          height: 205,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      TextStore(
                          text: widget.name,
                          fontsize: 20,
                          fontfamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          hexcolor: '#272A3F'),
                      Spacer(),
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
                  SizedBox(height:8),
                  TextStore(
                      text: widget.password,
                      fontsize: 16,
                      fontfamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      hexcolor: '#272A3F'),
                  SizedBox(height:13),
                  TextStore(
                      text: 'Month / Year',
                      fontsize: 14,
                      fontfamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      hexcolor: '#6E7989'),
                  SizedBox(height:1.2),
                  TextStore(
                      text: '${widget.month} / ${widget.year}',
                      fontsize: 14,
                      fontfamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      hexcolor: '#272A3F'),
                  SizedBox(height:20),
                  Row(
                    children: [
                      TextStore(
                          text: widget.NameBank,
                          fontsize: 14,
                          fontfamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          hexcolor: '#272A3F'),
                      Spacer(),
                      Image.asset(widget.image),
                      SizedBox(width:16),
                    ],
                  ),
                  SizedBox(height:11),
                ]
            ),
          ),
        ),
      ),
    );
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
                padding: const EdgeInsets.only(top: 22, left: 16, right: 6),
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
                                text: 'Remove card',
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
                                        text: '• • • •  • • • •  • • • •  4567',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: HexColor('#272A3F'),
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w500,
                                        )),
                                    TextSpan(
                                        text: ' card?',
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
                            //  await deleteMycart(widget.index);
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
