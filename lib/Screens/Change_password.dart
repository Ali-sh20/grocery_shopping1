import 'package:flutter/material.dart';
import 'package:grocery_shopping1/Screens/Artboard58.dart';
import 'package:grocery_shopping1/Utills/helpers.dart';
import 'package:grocery_shopping1/api/Profile_ApiController.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';

class Change_password extends StatefulWidget {
  const Change_password({Key? key}) : super(key: key);

  @override
  _Change_passwordState createState() => _Change_passwordState();
}

class _Change_passwordState extends State<Change_password> with Helpers {
  late TextEditingController _Phone;
  String? _PhoneError;
  @override
  void initState() {
    super.initState();
    _Phone = TextEditingController();
  }

  @override
  void dispose() {
    _Phone.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#29C17E'),
        elevation: 5,
        title: Text(
          'Change password',
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
          height: 285,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 41, left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextStore(
                    text: 'Password reset',
                    fontsize: 24,
                    fontfamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    hexcolor: '#272A3F'),
                SizedBox(height: 2),
                TextStore(
                    text: 'Enter email address to send reset code',
                    fontsize: 16,
                    fontfamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    hexcolor: '#6E7989'),
                SizedBox(height: 37),
                TextField(
                  controller: _Phone,
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
                    hintText: 'Email address',
                    hintStyle: TextStyle(
                        color: HexColor('#99A0B0'),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto'),
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    Spacer(),
                    ElevatedButton(
                        onPressed: () async {
                          await preformPhone();
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

  Future preformPhone() async {
    if (cheekData()) await send();
  }

  bool cheekData() {
    if (_Phone.text.isNotEmpty) {
      _PhoneError = null;
      return true;
    }
    cheekTextfeilderror();
    showMessage(context, message: 'Enter required data', error: true);
    return false;
  }

  void cheekTextfeilderror() {
    setState(() {
      _PhoneError = _Phone.text.isEmpty ? 'Enter Phone' : null;
    });
  }

  Future send() async {
   bool status =await ProfileApiController().forgetPassword(context, phone:  _Phone.text);
    if(status){
    Navigator.pushReplacement(context,MaterialPageRoute(
      builder: (context) => Artboard58(
        phone: _Phone.text,
      ),
    ),);
    }
  }
}
