import 'package:flutter/material.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';

class Artboard52 extends StatefulWidget {
  const Artboard52({Key? key}) : super(key: key);

  @override
  _Artboard52State createState() => _Artboard52State();
}

class _Artboard52State extends State<Artboard52> {
  String dropdownvalue = '\+972';
  var items = ['\+970', '\+972', '\+974', '\+975', '\+976', '\+971'];
  int values = 1;
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
          height: 530,
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
                        text: 'Recipient details',
                        fontsize: 20,
                        fontfamily: 'Roboto',
                        hexcolor: '#272A3F',
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(children: [
                    Column(children: [
                      Image.asset('images/Group_224.png'),
                    ]),
                    SizedBox(width: 16),
                    TextStore(
                      text: 'Chnage image',
                      fontsize: 16,
                      fontfamily: 'Roboto',
                      hexcolor: '#6E7989',
                      fontWeight: FontWeight.w400,
                    ),
                  ]),
                  SizedBox(height: 36),
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
                      hintText: 'Enter your name',
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
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(
                          color: HexColor('#99A0B0'),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto'),
                    ),
                  ),
                  SizedBox(height: 35),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 72,
                        height: 65,
                        child: Expanded(
                            child: DropdownButton(
                              style: TextStyle(
                                  color: HexColor('#4B5865'),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                              underline: Container(
                                height: 1.5,
                                color: HexColor('#D8DAE0'),
                              ),
                              value: dropdownvalue,
                              icon: Icon(Icons.keyboard_arrow_down),
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                    value: items, child: Text(items));
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                });
                              },
                            )),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: TextField(
                          onChanged: _onChanged3,
                          keyboardType: TextInputType.text,
                          controller: _phoneeditingController2,
                          style: TextStyle(
                              color: HexColor('#272A3F'),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto'),
                          cursorColor: Colors.black,
                          enabled: true,
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: HexColor('#D8DAE0'), width: 1)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: HexColor('#D8DAE0'),
                                )),
                            hintText: 'Your mobile number',
                            hintStyle: TextStyle(
                                color: HexColor('#99A0B0'),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Roboto'),
                          ),
                        ),
                      ),
                    ],
                  ),
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
