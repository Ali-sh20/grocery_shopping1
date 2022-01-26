import 'package:flutter/material.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';

class Artboard42 extends StatefulWidget {
  const Artboard42({Key? key}) : super(key: key);

  @override
  _Artboard42State createState() => _Artboard42State();
}

class _Artboard42State extends State<Artboard42> {
  String dropdownvalue = 'Pannipitiya';
  var items = ['Pannipitiya', '\+972', '\+974', '\+975', '\+976', '\+971'];
  String dropdownvalue2 = 'Egodawatta';
  var items2 = ['Egodawatta', '\+972', '\+974', '\+975', '\+976', '\+971'];
  int charLength1 = 0;

  _onChanged(String value) {
    setState(() {
      charLength1 = value.length;
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
            height: 520,
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
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back)),
                      SizedBox(
                        width: 32,
                      ),
                      TextStore(
                          text: 'Home delivery',
                          fontsize: 20,
                          fontWeight: FontWeight.w500,
                          hexcolor: '#272A3F',
                          fontfamily: 'Roboto'),
                    ],
                  ),
                  SizedBox(height: 23),
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
                              text: 'Select delivery area',
                              fontsize: 24,
                              fontfamily: 'Roboto',
                              hexcolor: '#272A3F',
                              fontWeight: FontWeight.w500,
                            ),
                          ]),
                          SizedBox(height: 5),
                          Row(children: [
                            TextStore(
                              text: 'Delivery charges apply',
                              fontsize: 16,
                              fontfamily: 'Roboto',
                              hexcolor: '#6E7989',
                              fontWeight: FontWeight.w400,
                            ),
                          ])
                        ]),
                  ]),
                  SizedBox(height: 35),
                  Container(
                    width: double.infinity,
                    height: 55,
                    child: Expanded(
                        child: DropdownButton(
                          isExpanded: true,
                          style: TextStyle(
                              color: HexColor('#272A3F'),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                          underline: Container(
                            height: 1.5,
                            color: HexColor('#D8DAE0'),
                          ),
                          value: dropdownvalue,
                          icon: Icon(Icons.keyboard_arrow_down,color: HexColor('#272A3F')),
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
                  SizedBox(height: 35),
                  Container(
                    width: double.infinity,
                    height: 55,
                    child: Expanded(
                        child: DropdownButton(
                          isExpanded: true,
                          style: TextStyle(
                              color: HexColor('#272A3F'),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                          underline: Container(
                            height: 1.5,
                            color: HexColor('#D8DAE0'),
                          ),
                          value: dropdownvalue2,
                          icon: Icon(Icons.keyboard_arrow_down,color: HexColor('#272A3F')),
                          items: items2.map((String items) {
                            return DropdownMenuItem(
                                value: items, child: Text(items));
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue2 = newValue!;
                            });
                          },
                        )),
                  ),
                  SizedBox(height: 35),
                  Expanded(
                    child: TextField (
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
                        hintText: 'Street name',
                        hintStyle: TextStyle(
                            color: HexColor('#99A0B0'),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto'),
                      ),
                    ),
                  ),
                  Row(children: [
                    Spacer(),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '');
                        },
                        child: Text(
                          'SAVE',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            color: charLength1 > 0
                                ? HexColor('#29C17E')
                                : HexColor('#8BDDB9'),),
                        ),
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            minimumSize: Size(94, 36),
                            primary: HexColor('#ffffff')

                        )),
                    SizedBox(width: 30),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/Artboard46');
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
                            primary: charLength1 > 0
                                ? HexColor('#29C17E')
                                : HexColor('#8BDDB9'),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(4))))),
                  ]),
                  SizedBox(height: 12),
                ],
              ),
            ),
          ),
        ));
  }
}
