import 'package:flutter/material.dart';
import 'package:grocery_shopping1/Provider/shopingCart_db_provider.dart';
import 'package:grocery_shopping1/shared/default_grabbing.dart';
import 'package:grocery_shopping1/shared/default_grabbing2.dart';
import 'package:grocery_shopping1/shared/dummy_content.dart';
import 'package:grocery_shopping1/shared/dummy_content2.dart';
import 'package:grocery_shopping1/widgets/Card_Mycart.dart';
import 'package:grocery_shopping1/widgets/Card_menu.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:snapping_sheet/snapping_sheet.dart';

import 'Artboard14.dart';
import 'Artboard20.dart';
import 'Artboard51.dart';
import 'Artboard60.dart';

class Artboard63 extends StatefulWidget {
  const Artboard63({Key? key}) : super(key: key);

  @override
  _Artboard63State createState() => _Artboard63State();
}

class _Artboard63State extends State<Artboard63> {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor('#FFFFFF'),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 128),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 115,
                    color: HexColor('#FFFFFF'),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, top: 15),
                      child: Row(
                        children: [
                          Column(children: [Image.asset('images/Group 242.png')]),
                          SizedBox(width: 17),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextStore(
                                    text: 'Ishan',
                                    fontsize: 24,
                                    fontfamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    hexcolor: '#272A3F'),
                                SizedBox(height: 4),
                                TextStore(
                                    text: 'ish.madushka@gmail.com',
                                    fontsize: 14,
                                    fontfamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    hexcolor: '#6E7989'),
                                SizedBox(height: 7),
                                TextStore(
                                    text: '0718786729',
                                    fontsize: 14,
                                    fontfamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    hexcolor: '#6E7989'),
                                SizedBox(height: 10),
                              ])
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Card(
                      color: HexColor('#FFFFFF'),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      child: Container(
                        width: double.infinity,
                        height: 350,
                        child: Padding(
                            padding:
                            const EdgeInsets.only(left: 16, top: 14, right: 16),
                            child: Column(children: [
                              Card_Profile(
                                image: 'images/Group 1282.png',
                                info: 'Recipient details',
                                icon: Icons.arrow_forward_ios,
                                rout: '/Artboard52',
                              ),
                              SizedBox(height: 14),
                              Divider(
                                  color: HexColor('#D8DAE0'),
                                  endIndent: 16,
                                  indent: 60,
                                  thickness: .5),
                              Card_Profile(
                                image: 'images/Group 1283.png',
                                info: 'Delivery address',
                                icon: Icons.arrow_forward_ios,
                                rout: '/Artboard53',
                              ),
                              SizedBox(height: 14),
                              Divider(
                                  color: HexColor('#D8DAE0'),
                                  endIndent: 16,
                                  indent: 60,
                                  thickness: .5),
                              Card_Profile(
                                image: 'images/Group 1284.png',
                                info: 'Payment Method',
                                icon: Icons.arrow_forward_ios,
                                rout: '/Artboard54',
                              ),
                              SizedBox(height: 14),
                              Divider(
                                  color: HexColor('#D8DAE0'),
                                  endIndent: 16,
                                  indent: 60,
                                  thickness: .5),
                              Card_Profile(
                                image: 'images/Group 1285.png',
                                info: 'Change password',
                                icon: Icons.arrow_forward_ios,
                                rout: '/Artboard58',
                              ),
                              SizedBox(height: 14),
                              Divider(
                                  color: HexColor('#D8DAE0'),
                                  endIndent: 16,
                                  indent: 60,
                                  thickness: .5),
                              GestureDetector(
                                onTap: () {
                                  showdeletDialog();
                                },
                                child: Row(children: [
                                  Image.asset('images/Group 1286.png'),
                                  SizedBox(width: 16),
                                  TextStore(
                                      text: 'Logout',
                                      fontsize: 16,
                                      fontfamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      hexcolor: '#272A3F'),
                                ]),
                              ),
                              SizedBox(height: 14),
                            ])),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card_menu()

          ],
        ));
  }
  void showdeletDialog() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(12), topLeft: Radius.circular(12)),
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
                              child: Icon(Icons.logout,
                                  color: HexColor('#FFFFFF')),
                            )
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextStore(
                                text: 'Logout',
                                fontsize: 24,
                                fontfamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                hexcolor: '#272A3F'),
                            SizedBox(height: 2),
                            TextStore(
                                text: 'Are you sure you want to logout?',
                                fontsize: 16,
                                fontfamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                hexcolor: '#6E7989'),
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
                          onPressed: () async {
                            Navigator.pushNamed(context, '/Artboard1');
                          },
                          child: Text(
                            'LOGOUT',
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
              height: 170,
            ),
          );
        });
  }
}


