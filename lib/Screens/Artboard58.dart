
import 'package:flutter/material.dart';
import 'package:grocery_shopping1/Utills/helpers.dart';
import 'package:grocery_shopping1/api/Profile_ApiController.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';

class Artboard58 extends StatefulWidget {
  final String phone;

  Artboard58({required this.phone});

  @override
  _Artboard58State createState() => _Artboard58State();
}

class _Artboard58State extends State<Artboard58>with Helpers{
  late TextEditingController _firstCodeTextController1;
  late TextEditingController _secondCodeTextController2;
  late TextEditingController _thirdCodeTextController3;
  late TextEditingController _fourthCodeTextController4;

  late TextEditingController _newPasswordTextController;
  late TextEditingController _newPasswordConfirmationTextController;

  late FocusNode _firstFocusNode;
  late FocusNode _secondFocusNode;
  late FocusNode _thirdFocusNode;
  late FocusNode _fourthFocusNode;

  @override
  void initState() {
    super.initState();
    _firstCodeTextController1 = TextEditingController();
    _secondCodeTextController2 = TextEditingController();
    _thirdCodeTextController3 = TextEditingController();
    _fourthCodeTextController4 = TextEditingController();

    _newPasswordTextController = TextEditingController();
    _newPasswordConfirmationTextController = TextEditingController();

    _firstFocusNode = FocusNode();
    _secondFocusNode = FocusNode();
    _thirdFocusNode = FocusNode();
    _fourthFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _firstFocusNode.dispose();
    _secondFocusNode.dispose();
    _thirdFocusNode.dispose();
    _fourthFocusNode.dispose();

    _firstCodeTextController1.dispose();
    _secondCodeTextController2.dispose();
    _thirdCodeTextController3.dispose();
    _fourthCodeTextController4.dispose();
    _newPasswordTextController.dispose();
    _newPasswordConfirmationTextController.dispose();
    super.dispose();
  }

  int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 60;
  int charLength1 = 0;
  int charLength2 = 0;
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
          height: 600,
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
                        text: 'Change password',
                        fontsize: 20,
                        fontfamily: 'Roboto',
                        hexcolor: '#272A3F',
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  SizedBox(height: 45),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _firstCodeTextController1,
                          focusNode: _firstFocusNode,
                          maxLength: 1,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          onChanged: (String value) {
                            if (value.isNotEmpty)
                              _secondFocusNode.requestFocus();
                          },
                          decoration: InputDecoration(
                            counterText: '',
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: HexColor('#D8DAE0'), width: 1)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: HexColor('#D8DAE0'),
                            )),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          controller: _secondCodeTextController2,
                          focusNode: _secondFocusNode,
                          maxLength: 1,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          onChanged: (String value) {
                            if (value.isNotEmpty)
                              _thirdFocusNode.requestFocus();
                            else
                              _firstFocusNode.requestFocus();
                          },
                          decoration: InputDecoration(
                            counterText: '',
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: HexColor('#D8DAE0'), width: 1)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: HexColor('#D8DAE0'),
                            )),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          controller: _thirdCodeTextController3,
                          focusNode: _thirdFocusNode,
                          maxLength: 1,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          onChanged: (String value) {
                            if (value.isNotEmpty)
                              _fourthFocusNode.requestFocus();
                            else
                              _secondFocusNode.requestFocus();
                          },
                          decoration: InputDecoration(
                            counterText: '',
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: HexColor('#D8DAE0'), width: 1)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: HexColor('#D8DAE0'),
                            )),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          controller: _fourthCodeTextController4,
                          focusNode: _fourthFocusNode,
                          maxLength: 1,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          onChanged: (String value) {
                            if (value.isEmpty) _thirdFocusNode.requestFocus();
                          },
                          decoration: InputDecoration(
                            counterText: '',
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: HexColor('#D8DAE0'), width: 1)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: HexColor('#D8DAE0'),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 35),
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
                      hintText: 'Old password',
                      hintStyle: TextStyle(
                          color: HexColor('#99A0B0'),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto'),
                    ),
                  ),
                  SizedBox(height: 35),
                  TextField(
                    controller: _newPasswordTextController,
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
                      hintText: 'New password',
                      hintStyle: TextStyle(
                          color: HexColor('#99A0B0'),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto'),
                    ),
                  ),
                  SizedBox(height: 35),
                  TextField(
                    controller: _newPasswordConfirmationTextController,
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
                      hintText: 'Confirm password',
                      hintStyle: TextStyle(
                          color: HexColor('#99A0B0'),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto'),
                    ),
                  ),
                  SizedBox(height: 35),
                  Row(children: [
                    Spacer(),
                    ElevatedButton(
                        onPressed: () async{
await preformChangepassword();
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

  String get code {
    return _firstCodeTextController1.text +
        _secondCodeTextController2.text +
        _thirdCodeTextController3.text +
        _fourthCodeTextController4.text;
  }

  OutlineInputBorder get _border {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        width: 1,
        color: Colors.grey.shade500,
      ),
    );
  }

  Future preformChangepassword()async {
    if (cheekData()
    )
      await resetPassword();
  }

  bool cheekData ()  {
    if (_newPasswordTextController.text.isNotEmpty &&
        _newPasswordTextController.text.isNotEmpty &&
        code.isNotEmpty&&code.length==4
    ) {


      return true;
    }
    showMessage(context, message: 'Enter required data', error: true);
    return false;
  }

  Future resetPassword() async {
    bool status = await ProfileApiController().resetPassword(
      context,
      phone: widget.phone,
      code: code,
      password: _newPasswordTextController.text,
    );
    if (status) {
      Navigator.pop(context);
    }
  }
}
