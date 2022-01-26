import 'package:flutter/material.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';

class Artboard15 extends StatefulWidget {
  const Artboard15({Key? key}) : super(key: key);

  @override
  _Artboard15State createState() => _Artboard15State();
}

class _Artboard15State extends State<Artboard15> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#29C17E'),
        title: Text(
          'Search',
          style: TextStyle(
              fontSize: 20,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              color: HexColor('#FFFFFF')),
        ),
        leading: Icon(Icons.search),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_voice)),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/HomeScreen');
            },
            icon: Icon(Icons.close),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/Group1166.png'),
            SizedBox(height:11),
            TextStore(
                text: 'No search result found!',
                fontsize: 18,
                fontfamily: 'Roboto',
                fontWeight: FontWeight.w500,
                hexcolor: '#272A3F'),
          ],
        ),
      ),
    );
  }
}
