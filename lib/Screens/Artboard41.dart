import 'package:flutter/material.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';

class Artboard41 extends StatefulWidget {
  const Artboard41({Key? key}) : super(key: key);

  @override
  _Artboard41State createState() => _Artboard41State();
}

class _Artboard41State extends State<Artboard41> {
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
          height: 300,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 38, left: 16, right: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      icon: Icon(Icons.close,
                          color: HexColor('#99A0B0'), size: 30),
                    ),
                    SizedBox(width: 37),
                    TextStore(
                      text: 'Select delivery type',
                      fontsize: 20,
                      fontfamily: 'Roboto',
                      hexcolor: '#272A3F',
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                SizedBox(height: 36),
                Padding(
                  padding: const EdgeInsets.only(left: 36, right: 32),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/Artboard42');
                    },
                    child:
                    Row(children: [
                      Column(children: [
                        CircleAvatar(
                            radius: 30,
                            backgroundColor: HexColor('#FFBB4E'),
                            child: Image.asset('images/Group 603.png'))
                      ]),
                      SizedBox(width: 20),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              TextStore(
                                text: 'Home Delivery',
                                fontsize: 16,
                                fontfamily: 'Roboto',
                                hexcolor: '#272A3F',
                                fontWeight: FontWeight.w500,
                              ),
                            ]),
                            SizedBox(height: 5),
                            Row(children: [
                              TextStore(
                                text: 'Within delivery grid',
                                fontsize: 14,
                                fontfamily: 'Roboto',
                                hexcolor: '#6E7989',
                                fontWeight: FontWeight.w400,
                              ),
                            ])
                          ]),
                      Spacer(),
                      Column(children: [
                        Icon(Icons.arrow_forward_ios,
                            color: HexColor('#99A0B0'), size: 20)
                      ])
                    ]),
                  ),
                ),
                SizedBox(height: 16),
                Divider(
                    endIndent: 16,
                    indent: 16,
                    thickness: .5,
                    color: HexColor('#D8DAE0')),
                SizedBox(height: 2),
                Padding(
                  padding: const EdgeInsets.only(left: 36, right: 32),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/Artboard44');
                    },
                    child: Row(children: [
                      Column(children: [
                        CircleAvatar(
                            radius: 30,
                            backgroundColor: HexColor('#FF7D59'),
                            child: Image.asset('images/Group 612.png'))
                      ]),
                      SizedBox(width: 20),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              TextStore(
                                text: 'Pick Up',
                                fontsize: 16,
                                fontfamily: 'Roboto',
                                hexcolor: '#272A3F',
                                fontWeight: FontWeight.w500,
                              ),
                            ]),
                            SizedBox(height: 5),
                            Row(children: [
                              TextStore(
                                text: 'Only from our outlets',
                                fontsize: 14,
                                fontfamily: 'Roboto',
                                hexcolor: '#6E7989',
                                fontWeight: FontWeight.w400,
                              ),
                            ])
                          ]),
                      Spacer(),
                      Column(children: [
                        Icon(Icons.arrow_forward_ios,
                            color: HexColor('#99A0B0'), size: 20)
                      ])
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
