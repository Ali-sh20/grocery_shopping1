import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';

class Artboard68 extends StatefulWidget {
  const Artboard68({Key? key}) : super(key: key);

  @override
  _Artboard68State createState() => _Artboard68State();
}

class _Artboard68State extends State<Artboard68> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#29C17E'),
        title: Text(
          'Terms & conditions',
          style: TextStyle(
              fontSize: 20,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              color: HexColor('#FFFFFF')),
        ),
        leading: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 18, right: 16, left: 16),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          TextStore(
              text: 'Product Terms',
              fontsize: 12,
              fontfamily: 'Roboto',
              fontWeight: FontWeight.w500,
              hexcolor: '#272A3F'),
          SizedBox(height: 25),
          TextStore(
              text:
                  'Lorem ipsum dolor sit amet,consectetuer adipiscing elit,sed\ndiam nonummy nibh euismod tincidunt ut laoreet dolore\nmagna Lorem ipsum dolor sit amet,consectetuer adipiscing\nelit,sed diam nonummy nibh euismod tincidunt ut laoreet\ndolore magna aliquam erat volutpat.Ut wisi enim ad minim\nveniam,quis nostrud exerci tation.',
              fontsize: 11,
              fontfamily: 'Roboto',
              fontWeight: FontWeight.w400,
              hexcolor: '#272A3F'),
          SizedBox(height: 30),
          TextStore(
                  text:'1. Use of the Site',
                  fontsize: 12,
                  fontfamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  hexcolor: '#272A3F'),
          SizedBox(height: 15),
          TextStore(
                  text: 'Lorem ipsum dolor sit amet,consectetuer adipiscing elit,sed\ndiam nonummy nibh euismod tincidunt ut laoreet dolore\nmagna Lorem ipsum dolor sit amet,consectetuer adipiscing\nelit,sed diam nonummy nibh euismod tincidunt ut laoreet\ndolore magna aliquam erat volutpat.Ut wisi enim ad minim\nveniam,quis nostrud exerci tation.',
                  fontsize: 11,
                  fontfamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  hexcolor: '#272A3F'),
          SizedBox(height: 30),
          TextStore(
                  text:'THESE TERMS AND CONDITIONS DO NOT AFFECT YOUR\nSTATUTORY RIGHTS.',
                  fontsize: 11,
                  fontfamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  hexcolor: '#272A3F'),
          SizedBox(height: 40),
          TextStore(
                  text:'2. Amendments',
                  fontsize: 12,
                  fontfamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  hexcolor: '#272A3F'),
          SizedBox(height: 20),
          TextStore(
                  text:'We may revise the terms and conditions from time to time\nwithout notice to you.Lorem ipsum dolor sit ',
                  fontsize: 11,
                  fontfamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  hexcolor: '#272A3F'),
        ]),
      ),
    );
  }
}
