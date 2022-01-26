import 'package:flutter/material.dart';
import 'package:grocery_shopping1/widgets/Card_Notifications.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';

class Artboard16 extends StatefulWidget {
  const Artboard16({Key? key}) : super(key: key);

  @override
  _Artboard16State createState() => _Artboard16State();
}

class _Artboard16State extends State<Artboard16> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor('#29C17E'),
          title: Text(
            'Notifications',
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                color: HexColor('#FFFFFF')),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/HomeScreen');
            },
            icon: Icon(Icons.close),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/HomeScreen');
              },
              icon: Icon(Icons.notifications),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(right: 16, left: 16, top: 11),
          child: Column(
              children: [
            Row(
              children: [
                TextStore(
                    text: 'Today',
                    fontsize: 14,
                    fontfamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    hexcolor: '#6E7989'),
                Spacer(),
                TextStore(
                    text: 'Clear all',
                    fontsize: 12,
                    fontfamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    hexcolor: '#29C17E'),
              ],
            ),
                Card_Notifications(
                    sizebox: 92,
                    text1: 'Fresh Food Fiesta',
                    fontsize1: 16,
                    fontWeight1: FontWeight.bold,
                    hexcolor1: '#272A3F',
                    text2: 'Now',
                    fontsize2: 10,
                    fontWeight2: FontWeight.bold,
                    hexcolor2: '#6E7989',
                    text3:
                    '23rd - 30th November on selected\nVegitables, Fruits, Fish & Meats.',
                    fontsize3: 14,
                    fontWeight3: FontWeight.w400,
                    hexcolor3: '#6E7989'),
            SizedBox(height: 6),
            SizedBox(height: 8),
            Card_Notifications(
                sizebox: 70,
                text1: 'Nexus Promotion',
                fontsize1: 16,
                fontWeight1: FontWeight.bold,
                hexcolor1: '#272A3F',
                text2: '4 min ago',
                fontsize2: 10,
                fontWeight2: FontWeight.bold,
                hexcolor2: '#6E7989',
                text3:
                    'Kraft Cheese Tin 200G was: Rs.825.00\nNexus Member Deal: Rs.618.00',
                fontsize3: 13.1,
                fontWeight3: FontWeight.w400,
                hexcolor3: '#6E7989'),
            SizedBox(height: 17),
            Row(
                  children: [
                    TextStore(
                        text: 'Yesterday',
                        fontsize: 14,
                        fontfamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        hexcolor: '#6E7989'),
                    Spacer(),
                    TextStore(
                        text: 'Clear',
                        fontsize: 12,
                        fontfamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        hexcolor: '#29C17E'),
                  ],
                ),
            SizedBox(height: 6),
            Card_Notifications(
                    sizebox: 68.9,
                    text1: 'Fresh Food Fiesta',
                    fontsize1: 16,
                    fontWeight1: FontWeight.w400,
                    hexcolor1: '#272A3F',
                    text2: '10:14 AM',
                    fontsize2: 10,
                    fontWeight2: FontWeight.bold,
                    hexcolor2: '#6E7989',
                    text3:
                    'Lorem ipsum dolor sit amet,\nconsectetuer adipiscing elit sed',
                    fontsize3: 14,
                    fontWeight3: FontWeight.w400,
                    hexcolor3: '#6E7989'),
            SizedBox(height: 17),
            Row(
                  children: [
                    TextStore(
                        text: 'Last week',
                        fontsize: 14,
                        fontfamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        hexcolor: '#6E7989'),
                    Spacer(),
                    TextStore(
                        text: 'Clear',
                        fontsize: 12,
                        fontfamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        hexcolor: '#29C17E'),
                  ],
                ),
            SizedBox(height: 6),
            Card_Notifications(
                    sizebox: 36,
                    text1: 'Fresh Food Fiesta',
                    fontsize1: 16,
                    fontWeight1: FontWeight.w400,
                    hexcolor1: '#272A3F',
                    text2: 'Mon. 10:14 AM',
                    fontsize2: 10,
                    fontWeight2: FontWeight.bold,
                    hexcolor2: '#6E7989',
                    text3:
                    'Lorem ipsum diam nonum Lorem\nipsum dolor sit amet, consectetuer ',
                    fontsize3: 14,
                    fontWeight3: FontWeight.w400,
                    hexcolor3: '#6E7989'),
            SizedBox(height: 8),
            Card_Notifications(
                    sizebox: 62,
                    text1: 'Food Promotion',
                    fontsize1: 16,
                    fontWeight1: FontWeight.w400,
                    hexcolor1: '#272A3F',
                    text2: 'Sun. 2:20 PM',
                    fontsize2: 10,
                    fontWeight2: FontWeight.bold,
                    hexcolor2: '#6E7989',
                    text3:
                    'Adipiscing elit, sed diam nonum\nLorem ipsum dolor sit amet, consec',
                    fontsize3: 14,
                    fontWeight3: FontWeight.w400,
                    hexcolor3: '#6E7989'),
          ]),
        ));
  }
}
