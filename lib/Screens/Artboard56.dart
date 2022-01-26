import 'package:flutter/material.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';

class Artboard56 extends StatefulWidget {
  const Artboard56({Key? key}) : super(key: key);

  @override
  _Artboard56State createState() => _Artboard56State();
}

class _Artboard56State extends State<Artboard56> {
  late TextEditingController _phoneeditingController2;
  @override
  void initState() {
    super.initState();
    _phoneeditingController2 = TextEditingController();
  }

  @override
  void dispose() {
    _phoneeditingController2.dispose();
    super.dispose();
  }

  int charLength1 = 0;
  int charLength2 = 0 ;
  int charLength3 = 0;
  int charLength4 = 0;
  int charLength5 = 0;

  _onChanged(String value) {
    setState(() {
      charLength1 = value.length;
    });
  }

  _onChanged2(String value) {
    setState(() {
      charLength2 = value.length;
    });
  }

  _onChanged3(String value) {
    setState(() {
      charLength3 = value.length;
    });
  }
  _onChanged4(String value) {
    setState(() {
      charLength4 = value.length;
    });
  }
  _onChanged5(String value) {
    setState(() {
      charLength5 = value.length;
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
          height: 450,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 38, left: 16, right: 16),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.close,
                            color: HexColor('#99A0B0'), size: 30),
                      ),
                      SizedBox(width: 32),
                      TextStore(
                        text: 'Add a card',
                        fontsize: 20,
                        fontfamily: 'Roboto',
                        hexcolor: '#272A3F',
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  SizedBox(height: 45),
                  TextField(
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
                      hintText: 'Card holder name',
                      hintStyle: TextStyle(
                          color: HexColor('#99A0B0'),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto'),
                    ),
                  ),
                  SizedBox(height: 35),
                  TextField(
                    // controller: ,
                    onChanged: _onChanged2,
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
                      hintText: 'Card number',
                      hintStyle: TextStyle(
                          color: HexColor('#99A0B0'),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto'),
                    ),
                  ),
                  SizedBox(height: 35),
                  Row(
                      children: [
                        Expanded(
                          child: TextField(
                            // controller: ,
                            onChanged: _onChanged3,
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
                              hintText: 'Month',
                              hintStyle: TextStyle(
                                  color: HexColor('#99A0B0'),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto'),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: TextField(
                            // controller: ,
                            onChanged: _onChanged4,
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
                              hintText: 'Year',
                              hintStyle: TextStyle(
                                  color: HexColor('#99A0B0'),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto'),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: TextField(
                            // controller: ,
                            onChanged: _onChanged5,
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
                              hintText: 'CVV number',
                              hintStyle: TextStyle(
                                  color: HexColor('#99A0B0'),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto'),
                            ),
                          ),
                        ),
                      ]),
                  SizedBox(height: 35),
                  Row(children: [
                    Spacer(),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'SAVE',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              color: HexColor('#FFFFFF')),
                        ),
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(94, 36),
                            primary: charLength1 > 0 &&
                                charLength2 > 0 &&
                                charLength3 > 0
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
      ),
    );
  }
}
