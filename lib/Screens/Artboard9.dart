import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:grocery_shopping1/Utills/helpers.dart';
import 'package:grocery_shopping1/api/Profile_ApiController.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';

class Artboard9 extends StatefulWidget{
  const Artboard9({Key? key}) : super(key: key);

  @override
  _Artboard9State createState() => _Artboard9State();
}

class _Artboard9State extends State<Artboard9>  with Helpers{
  late TapGestureRecognizer _tapGestureRecognizer1;
  late TapGestureRecognizer _tapGestureRecognizer2;
  late TextEditingController _emailTextEditingController;
  late TextEditingController _passwordTextEditingController;

  String? _emailError;
  String? _passwordError;
  @override
  void initState() {
    super.initState();
    _emailTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
    _tapGestureRecognizer2 = TapGestureRecognizer()
      ..onTap = navigaterToArtboard12;
    _tapGestureRecognizer1 = TapGestureRecognizer()
      ..onTap = navigaterToArtboard2;
  }

  void navigaterToArtboard12() {
    Navigator.pushNamed(context, '/Artboard12');
  }

  void navigaterToArtboard2() {
    Navigator.pushNamed(context, '/Artboard2');
  }

  @override
  void dispose() {
    _tapGestureRecognizer2.dispose();
    _tapGestureRecognizer1.dispose();
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    super.dispose();
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
          height: 415,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 41, left: 16, right: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(children: [
                  TextStore(
                      text: 'Sign in',
                      fontsize: 17,
                      fontfamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      hexcolor: '#29C17E'),
                  Spacer(),
                  RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(text: '', children: [
                        TextSpan(
                            text: 'Sign up',
                            recognizer: _tapGestureRecognizer1,
                            style: TextStyle(
                              fontSize: 17,
                              color: HexColor('#6E7989'),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                            )),
                      ])),
                ]),
                SizedBox(height: 23),
                Row(
                  children: [
                    TextStore(
                        text: 'Sign in to Grocery App',
                        fontsize: 21,
                        fontfamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        hexcolor: '#272A3F')
                  ],
                ),
                SizedBox(height: 2),
                Row(
                  children: [
                    TextStore(
                        text: 'Enter email & password to continue',
                        fontsize: 16,
                        fontfamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        hexcolor: '#6E7989')
                  ],
                ),
                SizedBox(height: 37),
                TextField(
                  controller: _emailTextEditingController,
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
                SizedBox(height: 35),
                TextField(
                  controller: _passwordTextEditingController,
                  obscureText: true,
                  obscuringCharacter: '.',
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                      color: HexColor('#272A3F'),
                      fontSize: 18,
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
                    hintText: 'Password',
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
                    RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(text: '', children: [
                          TextSpan(
                              text: 'Forgot password?',
                              recognizer: _tapGestureRecognizer2,
                              style: TextStyle(
                                fontSize: 16,
                                color: HexColor('#6E7989'),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                              )),
                        ])),
                    Spacer(),
                    ElevatedButton(
                        onPressed: () async{
                          await preformLogin();
                        },
                        child: Text(
                          'SIGN IN',
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

  Future preformLogin ()async {
    if (cheekData()
    )
      await login();
  }

  bool cheekData ()  {
    if (_emailTextEditingController.text.isNotEmpty &&
        _passwordTextEditingController.text.isNotEmpty) {
      _emailError = null;
      _passwordError = null;
      return true;
    }
    cheekTextfeilderror();
    showMessage(context, message: 'Enter required data', error: true);
    return false;
  }

  void cheekTextfeilderror() {
    setState(() {
      _emailError =
      _emailTextEditingController.text.isEmpty ? 'Enter email' : null;
      _passwordError =
      _passwordTextEditingController.text.isEmpty ? 'Enter password' : null;
    });
  }
  Future login ()async {
    bool loggedIn=await ProfileApiController().login(context,
        mobile: _emailTextEditingController.text,
        password: _passwordTextEditingController.text);
    if(loggedIn){
      Navigator.pushReplacementNamed(context,'/HomeScreen');
    }

  }
}
