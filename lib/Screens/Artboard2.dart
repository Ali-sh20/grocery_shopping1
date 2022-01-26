import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:grocery_shopping1/Utills/helpers.dart';
import 'package:grocery_shopping1/api/Profile_ApiController.dart';
import 'package:grocery_shopping1/models/Profile.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';

class Artboard2 extends StatefulWidget {
  const Artboard2({Key? key}) : super(key: key);

  @override
  _Artboard2State createState() => _Artboard2State();
}

class _Artboard2State extends State<Artboard2> with Helpers {
  late TapGestureRecognizer _tapGestureRecognizer;
  late TextEditingController _emailTextEditingController;
  late TextEditingController _passwordTextEditingController;
  late TextEditingController _nameTextEditingController;
  late TextEditingController _CityTextEditingController;
  String _gender = 'M';

  String? _emailError;
  String? _passwordError;
  String? _NameError;
  String? _CityError;
  @override
  void initState() {
    super.initState();
    _emailTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
    _nameTextEditingController = TextEditingController();
    _CityTextEditingController = TextEditingController();
    _tapGestureRecognizer = TapGestureRecognizer()
      ..onTap = navigaterToArtboard9;
  }

  void navigaterToArtboard9() {
    Navigator.pushNamed(context, '/Artboard9');
  }

  @override
  void dispose() {
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    _nameTextEditingController.dispose();
    _CityTextEditingController.dispose();
    _tapGestureRecognizer.dispose();
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
          height: 760,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 41, left: 16, right: 16),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(text: '', children: [
                          TextSpan(
                              text: 'Sign in',
                              recognizer: _tapGestureRecognizer,
                              style: TextStyle(
                                fontSize: 17,
                                color: HexColor('#6E7989'),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                              )),
                        ])),
                    Spacer(),
                    TextStore(
                        text: 'Sign up',
                        fontsize: 17,
                        fontfamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        hexcolor: '#29C17E'),
                  ]),
                  SizedBox(height: 23),
                  Row(
                    children: [
                      TextStore(
                          text: 'Welcome to Grocery App',
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
                          text: 'Let’s get started',
                          fontsize: 15,
                          fontfamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          hexcolor: '#6E7989')
                    ],
                  ),
                  SizedBox(height: 37),
                  TextField(
                    controller: _nameTextEditingController,
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                        color: HexColor('#272A3F'),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto'),
                    cursorColor: Colors.black,
                    enabled: true,
                    decoration: InputDecoration(
                      errorText: _NameError,
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: HexColor('#D8DAE0'), width: 1)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: HexColor('#D8DAE0'),
                      )),
                      hintText: 'Username',
                      hintStyle: TextStyle(
                          color: HexColor('#99A0B0'),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto'),
                    ),
                  ),
                  SizedBox(height: 35),
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
                      errorText: _emailError,
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: HexColor('#D8DAE0'), width: 1)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: HexColor('#D8DAE0'),
                      )),
                      hintText: 'Email email',
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
                      errorText: _passwordError,
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
                  SizedBox(height: 35),
                  TextField(
                    controller: _CityTextEditingController,
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
                      errorText: _CityError,
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: HexColor('#D8DAE0'), width: 1)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: HexColor('#D8DAE0'),
                      )),
                      hintText: 'City',
                      hintStyle: TextStyle(
                          color: HexColor('#99A0B0'),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto'),
                    ),
                  ),
                  SizedBox(height: 35),
                  Text(
                    'Gender',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: HexColor('#272A3F'),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto'),
                  ),
                  RadioListTile<String>(
                    title: Text('Female',
                        style: TextStyle(
                            color: HexColor('#99A0B0'),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto')),
                    value: 'F',
                    groupValue: _gender,
                    onChanged: (String? selected) {
                      print(selected);
                      if (selected != null) {
                        setState(() {
                          _gender = selected;
                        });
                      }
                    },
                  ),
                  RadioListTile<String>(
                    title: Text('Male',
                        style: TextStyle(
                            color: HexColor('#99A0B0'),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto')),
                    value: 'M',
                    groupValue: _gender,
                    onChanged: (String? selected) {
                      print(selected);
                      if (selected != null) {
                        setState(() {
                          _gender = selected;
                        });
                      }
                    },
                  ),
                  SizedBox(height: 24),
                  Row(
                    children: [
                      Spacer(),
                      ElevatedButton(
                          onPressed: () async {
                            await preformregister();
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
                              primary: HexColor('#29C17E'),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4))))),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future preformregister() async {
    if (cheekData()) await register();
  }

  bool cheekData() {
    if (_nameTextEditingController.text.isNotEmpty &&
            _emailTextEditingController.text.isNotEmpty &&
            _passwordTextEditingController.text.isNotEmpty
        &&
         _CityTextEditingController.text.isNotEmpty
        ) {
      _emailError = null;
      _passwordError = null;
      _NameError = null;
       _CityError = null;
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
      _NameError =
          _nameTextEditingController.text.isEmpty ? 'Enter Name' : null;
      _CityError =
      _CityTextEditingController.text.isEmpty ? 'Enter City' : null;
    });
  }

  Future register() async {
    bool loggedIn = await ProfileApiController().register(context, profile);
    print(loggedIn);
    if (loggedIn) {
    Navigator.pushReplacementNamed(context, '/Artboard14');

    }
  }

  Profile get profile {
    Profile profile = Profile();
    profile.name = _nameTextEditingController.text;
    profile.mobile = _emailTextEditingController.text;
    profile.password = _passwordTextEditingController.text;
    profile.city.id =_CityTextEditingController.value as int;
    profile.gender = _gender;
    return profile;
  }
}
