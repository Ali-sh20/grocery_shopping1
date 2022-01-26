import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:grocery_shopping1/Storge/app_prf_con.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';

class Artboard6 extends StatefulWidget {
  const Artboard6({Key? key}) : super(key: key);
  @override
  _Artboard6State createState() => _Artboard6State();
}

class _Artboard6State extends State<Artboard6> {
  late TextEditingController _firstCodeTextController;
  late TextEditingController _secondCodeTextController;
  late TextEditingController _thirdCodeTextController;
  late TextEditingController _fourthCodeTextController;

  late TextEditingController _newPasswordTextController;
  late TextEditingController _newPasswordConfirmationTextController;

  late FocusNode _firstFocusNode;
  late FocusNode _secondFocusNode;
  late FocusNode _thirdFocusNode;
  late FocusNode _fourthFocusNode;

  @override
  void initState() {
    super.initState();
    _firstCodeTextController = TextEditingController();
    _secondCodeTextController = TextEditingController();
    _thirdCodeTextController = TextEditingController();
    _fourthCodeTextController = TextEditingController();

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

    _firstCodeTextController.dispose();
    _secondCodeTextController.dispose();
    _thirdCodeTextController.dispose();
    _fourthCodeTextController.dispose();
    _newPasswordTextController.dispose();
    _newPasswordConfirmationTextController.dispose();
    super.dispose();
  }
  int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#29C17E'),
        elevation: 5,
        title: Text(
          'Verify number',
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
          height: 286,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 41, left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextStore(
                    text: 'Verify your number',
                    fontsize: 24,
                    fontfamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    hexcolor: '#272A3F'),
                SizedBox(height: 2),
                RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(text: '4 digit code sent to  ',
                        style: TextStyle(
                          fontSize: 16,
                          color: HexColor('#6E7989'),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                        children: [
                      TextSpan(
                            text:AppPrefController().phone,
                            style: TextStyle(
                            fontSize: 16,
                            color: HexColor('#29C17E'),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                          )),
                    ])),
                SizedBox(height: 37),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _firstCodeTextController,
                        focusNode: _firstFocusNode,
                        maxLength: 1,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        onChanged: (String value) {
                          if (value.isNotEmpty) _secondFocusNode.requestFocus();
                        },
                        decoration: InputDecoration(
                          counterText: '',
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: HexColor('#D8DAE0'),
                                    width: 1
                                )),
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
                        controller: _secondCodeTextController,
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
                                  color: HexColor('#D8DAE0'),
                                  width: 1
                              )),
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
                        controller: _thirdCodeTextController,
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
                                  color: HexColor('#D8DAE0'),
                                  width: 1
                              )),
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
                        controller: _fourthCodeTextController,
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
                                  color: HexColor('#D8DAE0'),
                                  width: 1
                              )),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: HexColor('#D8DAE0'),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    CountdownTimer(
                      endTime: endTime,
                      widgetBuilder: (_, CurrentRemainingTime? time) {
                        if (time == null) {
                          return Text('Try again',
                              style: TextStyle(
                                fontSize: 16,
                                color: HexColor('#6E7989'),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                              )
                          );
                        }
                        return Text(
                           'Resend in 00:${time.sec}s',
                            style: TextStyle(
                              fontSize: 16,
                              color: HexColor('#6E7989'),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                            ));
                      },
                    ),
                    Spacer(),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/Artboard8');
                        },
                        child: Text(
                          'VERIFY',
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
  String get code {
    return _firstCodeTextController.text +
        _secondCodeTextController.text +
        _thirdCodeTextController.text +
        _fourthCodeTextController.text;
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
}
