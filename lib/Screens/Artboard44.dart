import 'package:flutter/material.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';

class Artboard44 extends StatefulWidget {
  const Artboard44({Key? key}) : super(key: key);

  @override
  _Artboard44State createState() => _Artboard44State();
}

class _Artboard44State extends State<Artboard44> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015,8),
            lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  initState() {
    super.initState();
    selectedDate = DateTime.now();
  }

  String dropdownvalue = 'Dolekanaththa - Outlet';
  var items = ['Dolekanaththa - Outlet', '\+972', '\+974', '\+975', '\+976', '\+971'];
  String dropdownvalue2 = 'Egodawatta';
  var items2 = ['Egodawatta', '\+972', '\+974', '\+975', '\+976', '\+971'];
  int charLength1 = 0;
  int charLength2 = 0;

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
                          text: 'Pick up',
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
                          backgroundColor: HexColor('#FF7D59'),
                          child: Image.asset('images/Group 612.png'))
                    ]),
                    SizedBox(width: 20),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            TextStore(
                              text: 'Pick up from outlet',
                              fontsize: 24,
                              fontfamily: 'Roboto',
                              hexcolor: '#272A3F',
                              fontWeight: FontWeight.w500,
                            ),
                          ]),
                          SizedBox(height: 5),
                          Row(children: [
                            TextStore(
                              text: 'Only from our outlets',
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
                  InputDatePickerFormField(
                    firstDate: DateTime(2015, 8),
                        lastDate: DateTime(2101),
                    initialDate: selectedDate,
                    onDateSubmitted: (date) {
                      setState(() {
                        selectedDate = date;
                      });
                    },
                  ),
                  IconButton(
                      onPressed: () => _selectDate(context) ,
                      icon: Icon(Icons.event,color: HexColor('#6E7989'))),
                  SizedBox(height: 35),
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
                        suffixIcon: Icon(Icons.watch_later_outlined,color: HexColor('#6E7989')),
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: HexColor('#D8DAE0'), width: 1)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: HexColor('#D8DAE0'),
                            )),
                        hintText: 'Time',
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
                            color: charLength1 > 0 &&charLength2 > 0
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
                            primary: charLength1 > 0&&charLength2 > 0
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
