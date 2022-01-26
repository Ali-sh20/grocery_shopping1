import 'package:flutter/material.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';

class Artboard46 extends StatefulWidget {
  const Artboard46({Key? key}) : super(key: key);

  @override
  _Artboard46State createState() => _Artboard46State();
}

class _Artboard46State extends State<Artboard46> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#FFFFFF'),
      body: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12))),
        margin: EdgeInsets.zero,
        elevation: 15,
        child: Container(
          height: 450,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 38, left: 16, right: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/Artboard');
                      },
                      icon: Icon(Icons.close,
                          color: HexColor('#99A0B0'), size: 30),
                    ),
                    SizedBox(width: 32),
                    TextStore(
                      text: 'Payment method',
                      fontsize: 20,
                      fontfamily: 'Roboto',
                      hexcolor: '#272A3F',
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                SizedBox(height: 36),
                Card_paymentmethod(
                    image: 'images/Group1255.png',
                    name: 'Ishan Madushka',
                    id: '••••  ••••  ••••  4567'),
                SizedBox(height: 20),
                Divider(indent: 16, endIndent: 16),
                SizedBox(height: 20),
                Card_paymentmethod(
                    image: 'images/Group1281.png',
                    name: 'Ishan Madushka',
                    id: '••••  ••••  ••••  2345'),
                SizedBox(height: 20),
                Divider(indent: 16, endIndent: 16),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 36),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/Artboard54');
                    },
                    child: Card(
                      elevation: 0,
                      shape: Border(
                        bottom: BorderSide.none,
                        right: BorderSide.none,
                        left: BorderSide.none,
                        top: BorderSide.none,
                      ),
                      child: Row(
                        children: [
                          Column(children: [Image.asset('images/Group1282.png')]),
                          SizedBox(width: 20),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Row(children: [
                              TextStore(
                                text: 'Add a payment method',
                                fontsize: 16,
                                fontfamily: 'Roboto',
                                hexcolor: '#272A3F',
                                fontWeight: FontWeight.w500,
                              ),
                            ]),
                            SizedBox(height: 10),
                            Row(children: [
                              TextStore(
                                text: 'Add credit or debit card',
                                fontsize: 14,
                                fontfamily: 'Roboto',
                                hexcolor: '#6E7989',
                                fontWeight: FontWeight.w400,
                              ),
                            ]),
                          ]),
                          Spacer(),
                          Column(children: [
                            IconButton(
                                icon: Icon(Icons.arrow_forward_ios,
                                    color:HexColor('#99A0B0') ),
                            onPressed: (){},
                            ),
                          ]),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Card_paymentmethod extends StatefulWidget {
  final String image;
  final String name;
  final String id;
  Card_paymentmethod(
      {required this.image, required this.name, required this.id});

  @override
  _Card_paymentmethodState createState() => _Card_paymentmethodState();
}

class _Card_paymentmethodState extends State<Card_paymentmethod> {
  bool _cheek = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 36),
      child: Card(
        elevation: 0,
        shape: Border(
          bottom: BorderSide.none,
          right: BorderSide.none,
          left: BorderSide.none,
          top: BorderSide.none,
        ),
        child: Row(
          children: [
            Column(children: [Image.asset(widget.image)]),
            SizedBox(width: 20),
            Column(children: [
              Row(children: [
                TextStore(
                  text: widget.name,
                  fontsize: 16,
                  fontfamily: 'Roboto',
                  hexcolor: '#272A3F',
                  fontWeight: FontWeight.w500,
                ),
              ]),
              SizedBox(height: 10),
              Row(children: [
                TextStore(
                  text: widget.id,
                  fontsize: 14,
                  fontfamily: 'Roboto',
                  hexcolor: '#6E7989',
                  fontWeight: FontWeight.w400,
                ),
              ]),
            ]),
            Spacer(),
            Column(children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      _cheek = _cheek ? false : true;
                    });
                  },
                  icon: Icon(Icons.check_circle,
                      color:
                          _cheek ? HexColor('#99A0B0') : HexColor('#29C17E'))),
            ]),
          ],
        ),
      ),
    );
  }
}
