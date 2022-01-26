import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../size_config.dart';


class Artboard001 extends StatefulWidget {
  @override
  _Artboard001State createState() => _Artboard001State();
}

class _Artboard001State extends State<Artboard001> {
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Future.delayed(Duration(seconds: 3),(){
  //
  //     String route=
  //     FbAuthController().isLoggedIn?'/Home_Screen':'/onboardingScreen';
  //
  //     Navigator.pushReplacementNamed(context,route);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: HexColor('#019BE1'),
      body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
          padding:  EdgeInsets.only(left: SizeConfig().scaleWidth(52)),
          child: Image.asset('images/watin.png'),
        ),
            ),
            Expanded(
              child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: 'Welcome to\n',
                  style: TextStyle(
                       fontWeight: FontWeight.w500,
                       fontSize:30,
                       color: HexColor('#ffffff'),
                       fontFamily: 'Ooredo'
                  ),
                  children: [
                    TextSpan(
                        text: 'WATINPLUS',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize:SizeConfig().scaleTextFont(33),
                            color: HexColor('#ffffff'),
                            fontFamily: 'Ooredo'
                        )),
                  ])),
            ),


          ]),
    );
  }
}
