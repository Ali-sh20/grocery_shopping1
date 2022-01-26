import 'package:flutter/material.dart';
import 'package:grocery_shopping1/widgets/Card_Payment_method.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';

class Artboard54 extends StatefulWidget {
  const Artboard54({Key? key}) : super(key: key);

  @override
  _Artboard54State createState() => _Artboard54State();
}

class _Artboard54State extends State<Artboard54> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#F4F7FA'),
      appBar: AppBar(
        backgroundColor: HexColor('#29C17E'),
        elevation: 5,
        shadowColor: HexColor('#1F915F'),
        title: Text(
          'Add a payment method',
          style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: HexColor('#FFFFFF')),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 8),
        child: SingleChildScrollView(
          child: Column(children: [
            Card_Payment_method(
                name: 'Ishan Madushka',
                password: '• • • •    • • • •    • • • •    4567',
                month: 06,
                year: 2022,
                NameBank: 'Commercial Bank',
                image: 'images/Group 207.png'
            ),
            SizedBox(height: 8),
            Card_Payment_method(
                name: 'Ishan Madushka',
                password: '• • • •    • • • •    • • • •    2345',
                month: 8,
                year: 2025,
                NameBank: 'Sampath Bank',
                image: 'images/Group 209.png'
            ),
            SizedBox(height: 8),
            Card(
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            iconSize: 40,
                            padding: EdgeInsets.zero,
                            onPressed: () {
                              Navigator.pushNamed(context, '/Artboard56');
                            },
                            icon: Icon(
                              Icons.add,
                              color: HexColor('#99A0B0'),
                            )),
                        TextStore(
                            text: 'Add a card',
                            fontsize: 14,
                            fontfamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            hexcolor: '#272A3F'),
                      ]
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
