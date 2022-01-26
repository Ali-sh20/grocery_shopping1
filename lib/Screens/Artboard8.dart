import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';

class Artboard8 extends StatefulWidget {
  const Artboard8({Key? key}) : super(key: key);

  @override
  _Artboard8State createState() => _Artboard8State();
}

class _Artboard8State extends State<Artboard8> {
  late TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer()
      ..onTap = navigaterToArtboard1;
  }

  void navigaterToArtboard1() {
    Navigator.pushNamed(context, '/Artboard1');
  }

  @override
  void dispose() {
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#29C17E'),
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Center(
          child: Stack(alignment: Alignment.topCenter, children: [
            Image.asset('images/Group_1230.png'),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 5),
              child: Card(
                color: HexColor('#FFFFFF'),
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.zero,
                  child: TextStore(
                    text: 'K',
                    fontfamily: 'Roboto',
                    fontsize: 70,
                    fontWeight: FontWeight.bold,
                    hexcolor: '#29C17E',
                  ),
                  width: 120,
                  height: 120,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 500),
              child: Card(
                color: HexColor('#FFFFFF'),
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      topLeft: Radius.circular(12)),
                ),
                child: Container(
                  margin: EdgeInsets.zero,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 22, left: 16,right: 15),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                SizedBox(height:8),
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: HexColor('#29C17E'),
                                  child: Icon(Icons.check,
                                      color: HexColor('#FFFFFF')),
                                )
                              ],
                            ),
                            SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextStore(
                                    text: 'Congratulations!',
                                    fontsize: 24,
                                    fontfamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    hexcolor: '#272A3F'),
                                SizedBox(height: 2),
                                TextStore(
                                    text: 'Your mobile number verified\nsuccessfull! You can now continue\nusing Grocery Shopping App.',
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
                          RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  text: '',
                                  children: [
                                    TextSpan(
                                        text: 'LATER',
                                        recognizer: _tapGestureRecognizer,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: HexColor('#29C17E'),
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w500,
                                        )),
                                  ])),
                          SizedBox(width: 30),
                          ElevatedButton(

                              onPressed: () {
                                Navigator.pushNamed(context, '/Artboard9');
                              },
                              child: Text(
                                'SIGN IN',
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
                  width: double.infinity,
                  height: 245,
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
