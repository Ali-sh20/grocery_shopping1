import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_shopping1/widgets/Divider.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class Artboard35 extends StatefulWidget {
  const Artboard35({Key? key}) : super(key: key);

  @override
  _Artboard35State createState() => _Artboard35State();
}

class _Artboard35State extends State<Artboard35> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#F4F7FA'),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation:0,
                margin: EdgeInsets.all(0),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 38),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.arrow_back)),
                            SizedBox(
                              width: 32,
                            ),
                            TextStore(
                                text: 'Checkout',
                                fontsize: 20,
                                fontWeight: FontWeight.w300,
                                hexcolor: '#272A3F',
                                fontfamily: 'Roboto'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 32.1, right: 27),
                        child: Image.asset(
                          'images/image55.png',
                          width: double.infinity,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextStore(
                        text: 'Checkout details',
                        fontsize: 14,
                        fontWeight: FontWeight.w600,
                        hexcolor: '#272A3F',
                        fontfamily: 'Roboto'),
                    SizedBox(
                      height: 16,
                    ),
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      elevation: 15,
                      shadowColor: HexColor('#E2E5E9'),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/Artboard37');
                              },
                              child: Artboard36_widget_Icon(
                                title: 'Recipient Details',
                                iconData: Icons.person_outline_outlined,
                                rout: '',
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.only(left: 19, right: 0),
                                  child: SizedBox(
                                      height: 28,
                                      child: VerticalDivider(
                                        width: 2,
                                        indent: 0,
                                        endIndent: 0,
                                      )),
                                ),
                                Container(
                                  height: 2,
                                  width: 315,
                                  child: Divider(
                                    indent: 36,
                                    endIndent: 16,
                                  ),
                                )
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/Artboard41');
                              },
                              child: Artboard36_widget_Icon(
                                title: 'Delivery or Pick up info',
                                iconData: Icons.local_shipping_outlined,
                                rout: '',
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.only(left: 19, right: 0),
                                  child: SizedBox(
                                      height: 28,
                                      child: VerticalDivider(
                                        width: 2,
                                        indent: 0,
                                        endIndent: 0,
                                      )),
                                ),
                                Container(
                                  height: 14,
                                  width: 315,
                                  child: Divider(
                                    indent: 36,
                                    endIndent: 16,
                                  ),
                                )
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/Artboard46');
                              },
                              child: Artboard36_widget_Icon(
                                title: 'Delivery or Pick up info',
                                iconData: Icons.monetization_on_outlined,
                                rout: '',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
          SlidingSheet(
            elevation: 8,
            cornerRadius: 16,
            snapSpec: const SnapSpec(
              snap: true,
              snappings: [80, 340, double.infinity],
              positioning: SnapPositioning.pixelOffset,
            ),
            builder: (context, state) {
              return Container(
                height: 340,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 13, left: 16),
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
                          SizedBox(width: 10)
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
                              fontsize: 16,
                              fontfamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              hexcolor: '#6E7989'),
                          SizedBox(width: 10)
                        ]),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: MySeparator(color: HexColor('#D8DAE0')),
                        ),
                        Row(children: [
                          TextStore(
                              text: 'Delivery charges (Pick up)',
                              fontsize: 14,
                              fontfamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              hexcolor: '#6E7989'),
                          Spacer(),
                          TextStore(
                              text: 'Rs. 0.00',
                              fontsize: 14,
                              fontfamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              hexcolor: '#6E7989'),
                          SizedBox(width: 10)
                        ]),
                        SizedBox(height: 16),
                        Row(children: [
                          TextStore(
                              text: 'Add coupon',
                              fontsize: 14,
                              fontfamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              hexcolor: '#6E7989'),
                          Spacer(),
                          DottedBorder(
                              padding: EdgeInsets.zero,
                              color: HexColor('#29C17E'),
                              dashPattern: [3, 3],
                              strokeWidth: 1,
                              borderType: BorderType.RRect,
                              radius: Radius.circular(4),
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/');
                                  },
                                  child: Text(
                                    'ADD COUPON',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.bold,
                                        color: HexColor('#29C17E')),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: Size(94, 36),
                                      elevation: 0,
                                      primary: HexColor('#ffffff'),
                                      shape: RoundedRectangleBorder(
                                        side:
                                        BorderSide(style: BorderStyle.none),
                                      )))),
                          SizedBox(width: 10)
                        ]),
                        SizedBox(height: 19),
                        Row(children: [
                          TextStore(
                              text: 'Est. Total',
                              fontsize: 16,
                              fontfamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              hexcolor: '#272A3F'),
                          Spacer(),
                          TextStore(
                              text: 'Rs. 1,600.00',
                              fontsize: 20,
                              fontfamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              hexcolor: '#272A3F'),
                          SizedBox(width: 10)
                        ]),
                        SizedBox(height: 25),
                        Row(
                          children: [
                            Spacer(),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/');
                                },
                                child: Text(
                                  'PAY NOW',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      color: HexColor('#FFFFFF')),
                                ),
                                style: ElevatedButton.styleFrom(
                                    minimumSize: Size(114, 36),
                                    primary: HexColor('#8ADDB8'),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(4))))),
                            SizedBox(width:10)
                          ],
                        ),
                        SizedBox(height: 16),
                      ],
                    ),
                  ),
                ),
              );
            },
            headerBuilder: (context, state) {
              return Container(
                  height: 80,
                  width: double.infinity,
                  color: HexColor('#FFFFFF'),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, top: 10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: HexColor('#01D28E'),
                          child: Icon(Icons.shopping_cart_rounded,
                              color: HexColor('#FFFFFF')),
                        ),
                        SizedBox(width: 16),
                        TextStore(
                            text: 'Your cart summary',
                            fontsize: 24,
                            fontfamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            hexcolor: '#272A3F'),
                      ],
                    ),
                  ));
            },
// footerBuilder: (context, state) {
//   return Container(
//     height: 56,
//     width: double.infinity,
//     color: Colors.yellow,
//     alignment: Alignment.center,
//     child: Text(
//       'This is the footer',
//       style: TextStyle(color: HexColor('#ffffff'))
//     ),
//   );
// },
          ),
        ]
      )
    );
  }
}

class Artboard36_widget_Icon extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String subtitle;
  final String rout;

  const Artboard36_widget_Icon({
    required this.title,
    this.subtitle = '',
    required this.iconData,
    required this.rout,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: HexColor('#99A0B0'),
              child: Icon(
                iconData,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            TextStore(
              text: title,
              fontsize: 16,
              fontWeight: FontWeight.w600,
              hexcolor: '#272A3F',
              fontfamily: 'Roboto',
            ),
          ],
        ),
        IconButton(
          color: HexColor('#99A0B0'),
          iconSize: 15,
          padding: EdgeInsets.all(0),
          onPressed: () {},
          icon: Icon(Icons.arrow_forward_ios),
        )
      ],
    );
  }
}


