import 'package:flutter/material.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';

class DummyContent2 extends StatelessWidget {
  final bool reverse;
  final ScrollController? controller;

  const DummyContent2({Key? key, this.controller, this.reverse = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: HexColor('#FFFFFF'),
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(12), bottomLeft: Radius.circular(12)),
      ),
      child: Container(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(top: 13, left: 16, right: 16),
          child: Column(
            children: [
              Row(children: [
                TextStore(
                    text: 'Subtotal (4 items)',
                    fontsize: 14,
                    fontfamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    hexcolor: '#272A3F'),
                Spacer(),
                TextStore(
                    text: 'Rs. 1,820.00',
                    fontsize: 16,
                    fontfamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    hexcolor: '#272A3F'),
              ]),
              SizedBox(height: 11),
              Row(children: [
                TextStore(
                    text: 'Promotion discounts',
                    fontsize: 14,
                    fontfamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    hexcolor: '#6E7989'),
                Spacer(),
                TextStore(
                    text: 'Rs. -220.00',
                    fontsize: 14,
                    fontfamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    hexcolor: '#6E7989'),
              ]),
              SizedBox(height: 20),
              Row(children: [
                Spacer(),
                ElevatedButton(
                    onPressed: () {
                     Navigator.pushNamed(context, '/Artboard30');
                    },
                    child: Text(
                      'SAVE CART',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          color: HexColor('#29C17E')),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      minimumSize: Size(94, 36),
                      primary: HexColor('#ffffff'),
                    )),
                SizedBox(width: 30),
                ElevatedButton(
                    onPressed: () async{
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
                            borderRadius:
                            BorderRadius.all(Radius.circular(4))))),
              ])
            ],
          ),
        ),
        height: 70,
        width: double.infinity,
      ),
    );
  }
}
