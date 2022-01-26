import 'package:flutter/material.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';


class Artboard30 extends StatefulWidget {
  const Artboard30({Key? key}) : super(key: key);

  @override
  _Artboard30State createState() => _Artboard30State();
}

class _Artboard30State extends State<Artboard30> {
  int charLength = 0;

  _onChanged(String value) {
    setState(() {
      charLength = value.length;
    });
  }
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
          height: 340,
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
                        Navigator.pushNamed(context, '/Artboard27');
                      },
                      icon: Icon(Icons.close,
                          color: HexColor('#99A0B0'), size: 30),
                    ),
                    SizedBox(width: 32),
                    TextStore(
                      text: 'Save cart',
                      fontsize: 20,
                      fontfamily: 'Roboto',
                      hexcolor: '#272A3F',
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                SizedBox(height: 23),
                Row(children: [
                  Column(children: [
                    CircleAvatar(
                        backgroundColor: HexColor('#29C17E'),
                        radius: 30,
                        child: Icon(Icons.shopping_cart_outlined,color: Colors.white,)),
                  ]),
                  SizedBox(width: 16),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextStore(
                          text: 'Save shopping cart',
                          fontsize: 24,
                          fontfamily: 'Roboto',
                          hexcolor: '#272A3F',
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(height:4),
                        TextStore(
                          text: 'When you\'re ready, you can check out',
                          fontsize: 14,
                          fontfamily: 'Roboto',
                          hexcolor: '#6E7989',
                          fontWeight: FontWeight.w400,
                        ),
                      ]),
                ]),
                SizedBox(height: 37),
                TextField (
                  // controller: ,
                  onChanged: _onChanged,
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                      color: HexColor('#272A3F'),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto'),
                  cursorColor: Colors.black,
                  enabled: true,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide:
                        BorderSide(color: HexColor('#D8DAE0'), width: 1)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: HexColor('#D8DAE0'),
                        )),
                    hintText: 'Enter cart name',
                    hintStyle: TextStyle(
                        color: HexColor('#99A0B0'),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto'),
                  ),
                ),
                SizedBox(height: 24),
                Row(children: [
                  Spacer(),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/Artboard32');
                      },
                      child: Text(
                        'NEXT',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            color: HexColor('#FFFFFF')),
                      ),
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(94, 36),
                          primary: charLength > 0
                              ? HexColor('#29C17E')
                              : HexColor('#8BDDB9'),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(4))))),
                  SizedBox(height: 30)
                ]),
                SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
