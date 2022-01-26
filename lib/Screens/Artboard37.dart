import 'package:flutter/material.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';


class Artboard37 extends StatefulWidget {
  const Artboard37({Key? key}) : super(key: key);

  @override
  _Artboard37State createState() => _Artboard37State();
}

class _Artboard37State extends State<Artboard37> {
  int charLength1 = 0;
  int charLength2 = 0;
  String dropdownvalue = '\+972';
  var items = ['\+970', '\+972', '\+974', '\+975', '\+976', '\+971'];
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
                      text: 'Recipient details',
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
                        backgroundColor: HexColor('#FFB53E'),
                        radius: 30,
                        child: Icon(Icons.account_circle_outlined,color: Colors.white,)),
                  ]),
                  SizedBox(width: 16),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextStore(
                          text: 'Enter recipient',
                          fontsize: 24,
                          fontfamily: 'Roboto',
                          hexcolor: '#272A3F',
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(height:4),
                        TextStore(
                          text: 'One who receives shopping items',
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
                    hintText: 'Enter your name',
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
                      child: TextField (
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
                SizedBox(height: 24),
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
                            color: charLength1 > 0 && charLength2 > 0
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
                        Navigator.pushNamed(context, '/Artboard41');
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
                          primary: charLength1 > 0 && charLength2 > 0
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
      ),
    );
  }
}
