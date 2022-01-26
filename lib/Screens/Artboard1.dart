import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';

import 'package:hexcolor/hexcolor.dart';
class Artboard1 extends StatefulWidget {
  const Artboard1({Key? key}) : super(key: key);

  @override
  _Artboard1State createState() => _Artboard1State();
}

class _Artboard1State extends State<Artboard1> {
  late TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer()
      ..onTap = navigaterToArtboard2;
  }

  void navigaterToArtboard2() {
    Navigator.pushNamed(context, '/Artboard2');
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 146),
          child: Stack(
            alignment: Alignment.topCenter,
              children: [
            Image.asset('images/Group_1230.png'),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Card(
                color: HexColor('#FFFFFF'),
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.zero,
                  child: TextStore(text: 'K',
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
              padding: const EdgeInsets.only( top: 330),
              child: Text('Welcome to\nGrocery shopping',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 32,
                      color: HexColor('#ffffff'),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w300)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 55, right: 55, top: 454),
               child: ElevatedButton(
                   onPressed: () {
                     Navigator.pushNamed(context, '/Artboard9');
                   },
                   child: Text(
                     'SIGN IN',
                     style: TextStyle(
                         fontSize: 14,
                         fontFamily: 'Roboto',
                         fontWeight: FontWeight.w500,
                         color: HexColor('#29C17E')),
                   ),
                   style: ElevatedButton.styleFrom(
                       minimumSize: Size(134, 36),
                       primary: HexColor('#FFFFFF'),
                       shape: RoundedRectangleBorder(
                           borderRadius:
                           BorderRadius.all(Radius.circular(4))))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 520),
                child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: '',
                    children: [
                      TextSpan(
                          text: 'SIGN UP',
                          recognizer: _tapGestureRecognizer,
                          style: TextStyle(
                            fontSize: 14,
                            color: HexColor('#ffffff'),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                          )),
                    ])),
            )
          ]),
        ),
      ),
    );
  }
}
