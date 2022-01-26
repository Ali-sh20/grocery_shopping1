import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_shopping1/Storge/app_prf_con.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';

import 'Artboard6.dart';

class Artboard4 extends StatefulWidget {
  const Artboard4({Key? key}) : super(key: key);

  @override
  _Artboard4State createState() => _Artboard4State();
}

class _Artboard4State extends State<Artboard4> {
  String dropdownvalue = '\+972';
  var items = ['\+970', '\+972', '\+974', '\+975', '\+976', '\+971'];
  int values = 1;
  late TextEditingController _phoneeditingController;
  @override
  void initState() {
    super.initState();
    _phoneeditingController = TextEditingController();
  }

  @override
  void dispose() {
    _phoneeditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#29C17E'),
        elevation: 5,
        title: Text(
          'Add number',
          style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: HexColor('#FFFFFF')),
        ),
      ),
      body: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12))),
        margin: EdgeInsets.zero,
        elevation: 15,
        child: Container(
          height: 265,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 41, left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextStore(
                    text: 'What’s your number',
                    fontsize: 24,
                    fontfamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    hexcolor: '#272A3F'),
                SizedBox(height: 2),
                TextStore(
                    text: 'Enter mobile number to continue',
                    fontsize: 16,
                    fontfamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    hexcolor: '#6E7989'),
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
                        keyboardType: TextInputType.text,
                        controller: _phoneeditingController,
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
                SizedBox(height: 24),
                Row(
                  children: [
                    Spacer(),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/Artboard6');
                          String Phone = _phoneeditingController.text;
                          AppPrefController().changePhone(dropdownvalue + ' ' +Phone);
                        },
                        child: Text(
                          'SEND',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              color: HexColor('#FFFFFF')),
                        ),
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(94, 36),
                            primary: HexColor('#29C17E'),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))))),
                  ],
                ),
                SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
