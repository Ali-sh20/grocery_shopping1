import 'package:flutter/material.dart';
import 'package:grocery_shopping1/widgets/Card_question.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';

class Artboard69 extends StatefulWidget {
  const Artboard69({Key? key}) : super(key: key);

  @override
  _Artboard69State createState() => _Artboard69State();
}

class _Artboard69State extends State<Artboard69> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#F4F7FA'),
      appBar: AppBar(
        backgroundColor: HexColor('#29C17E'),
        title: Text(
          'Got a question?',
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
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Artboard70');
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 12),
          child: Column(children: [
            Card_question(
              text1:
                  'Do you charge any extra delivery costs?\nIf so, how much ?',
              text2:
                  'We charge Rs.200.00 for any delivery within\nthe specified delivery grid and we are not\ndoing any deliveries to cities outside the\nspecified grid at the moment.',
            ),
            SizedBox(height: 8),
            Card_question(
              text1:
                  'To complete my order, I have to use\nmy credit card. How secure is my\ninformation ?',
              text2:
                  'Your Visa, Master and American Express\npayments are going through secure payment\ngateways operated by the respective banks.\nYour card details will be securely transmitted\nto the Bank for transactionauthorization\nusing SSL 128bit encryption.',
            ),
          ])),
    );
  }
}
