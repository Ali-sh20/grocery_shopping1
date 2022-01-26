import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';

class Artboard25 extends StatefulWidget {
  const Artboard25({Key? key}) : super(key: key);

  @override
  _Artboard25State createState() => _Artboard25State();
}

class _Artboard25State extends State<Artboard25> {
  int charLength = 0;
  int wordLength = 0;

  _onChanged(String value) {
    setState(() {
      charLength = value.length;
      value.endsWith(' ') ? ++wordLength : wordLength;
    });
  }

  double _rate = 1;
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
          height: 330,
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
                        Navigator.pushNamed(context, '/Artboard24');
                      },
                      icon: Icon(Icons.close,
                          color: HexColor('#99A0B0'), size: 30),
                    ),
                    SizedBox(width: 32),
                    TextStore(
                      text: 'Write a review',
                      fontsize: 20,
                      fontfamily: 'Roboto',
                      hexcolor: '#272A3F',
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Row(children: [
                  Column(children: [
                    CircleAvatar(
                        backgroundColor: HexColor('#ffffff'),
                        radius: 30,
                        child: Image.asset('images/Group 1032.png')),
                  ]),
                  SizedBox(width: 16),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RatingBar.builder(
                          initialRating: 1,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemSize: 20,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 6),
                          itemBuilder: (context, _a) => Icon(
                            Icons.star_rounded,
                            color: HexColor('#FFAC41'),
                          ),
                          onRatingUpdate: (rating) {
                            setState(() {
                              _rate = rating;
                            });
                          },
                        ),
                        SizedBox(height: 11),
                        TextStore(
                          text: 'Ishan Madushka',
                          fontsize: 14,
                          fontfamily: 'Roboto',
                          hexcolor: '#6E7989',
                          fontWeight: FontWeight.w400,
                        ),
                      ]),
                ]),
                SizedBox(height: 37),
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
                  enabled: wordLength<50?true:false,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: HexColor('#D8DAE0'), width: 1)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: HexColor('#D8DAE0'),
                    )),
                    hintText: 'Write a review',
                    hintStyle: TextStyle(
                        color: HexColor('#99A0B0'),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto'),
                  ),
                ),
                SizedBox(height: 24),
                Row(children: [
                  TextStore(
                    text: '$wordLength of 50 words',
                    fontsize: 16,
                    fontfamily: 'Roboto',
                    hexcolor: '#6E7989',
                    fontWeight: FontWeight.w500,
                  ),
                  Spacer(),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'routeName');
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
                          primary: charLength > 0
                              ? HexColor('#29C17E')
                              : HexColor('#8BDDB9'),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4))))),
                  SizedBox(height: 30)
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
