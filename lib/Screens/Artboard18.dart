import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';

class Artboard18 extends StatefulWidget {
  const Artboard18({Key? key}) : super(key: key);

  @override
  _Artboard18State createState() => _Artboard18State();
}

class _Artboard18State extends State<Artboard18> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('images/Group 1106.png',
              width: double.infinity, fit: BoxFit.fill),
          Padding(
            padding: const EdgeInsets.only(top: 38, left: 16),
            child:
            Row(children: [
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/HomeScreen');
                  },
                  icon: Icon(Icons.keyboard_backspace_sharp,
                      color: HexColor('#FFFFFF'), size: 30)),
              SizedBox(width: 32),
              TextStore(
                  text: 'Beverages',
                  fontsize: 20,
                  fontfamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  hexcolor: '#FFFFFF'),
              Spacer(),
              IconButton(
                  onPressed: () {},
                  icon:
                      Icon(Icons.search, color: HexColor('#FFFFFF'), size: 30)),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 140, right: 16),
            child: Card(
              margin: EdgeInsets.zero,
              elevation: 15,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4))),
              color: HexColor('#FFFFFF'),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 16, left: 16, top: 12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                        TextStore(
                            text: 'Chocolate Drink',
                            fontsize: 16,
                            fontfamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            hexcolor: '#272A3F'),
                        Spacer(),
                        IconButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            Navigator.pushNamed(context, 'routeName');
                          },
                          icon: Icon(Icons.arrow_forward_ios,
                          color: HexColor('#99A0B0'),
                          size: 20,
                          ),
                        )
                      ]),
                      Divider(color: HexColor('#D8DAE0'),thickness: .5,endIndent: 16,indent: 16),
                      Row(children: [
                        TextStore(
                            text: 'Coffee',
                            fontsize: 16,
                            fontfamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            hexcolor: '#272A3F'),
                        Spacer(),
                        IconButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            Navigator.pushNamed(context, '/Artboard19');
                          },
                          icon: Icon(Icons.arrow_forward_ios,
                            color: HexColor('#99A0B0'),
                            size: 20,
                          ),
                        )
                      ]),
                      Divider(color: HexColor('#D8DAE0'),thickness: .5,endIndent: 16,indent: 16),
                      Row(children: [
                        TextStore(
                            text: 'Concentrated Fruit Drinks',
                            fontsize: 16,
                            fontfamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            hexcolor: '#272A3F'),
                        Spacer(),
                        IconButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            Navigator.pushNamed(context, 'routeName');
                          },
                          icon: Icon(Icons.arrow_forward_ios,
                            color: HexColor('#99A0B0'),
                            size: 20,
                          ),
                        )
                      ]),
                      Divider(color: HexColor('#D8DAE0'),thickness: .5,endIndent: 16,indent: 16),
                      Row(children: [
                        TextStore(
                            text: 'Juices & Carbonates',
                            fontsize: 16,
                            fontfamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            hexcolor: '#272A3F'),
                        Spacer(),
                        IconButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            Navigator.pushNamed(context, 'routeName');
                          },
                          icon: Icon(Icons.arrow_forward_ios,
                            color: HexColor('#99A0B0'),
                            size: 20,
                          ),
                        )
                      ]),
                      Divider(color: HexColor('#D8DAE0'),thickness: .5,endIndent: 16,indent: 16),
                      Row(children: [
                        TextStore(
                            text: 'Malt Drink',
                            fontsize: 16,
                            fontfamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            hexcolor: '#272A3F'),
                        Spacer(),
                        IconButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            Navigator.pushNamed(context, 'routeName');
                          },
                          icon: Icon(Icons.arrow_forward_ios,
                            color: HexColor('#99A0B0'),
                            size: 20,
                          ),
                        )
                      ]),
                      Divider(color: HexColor('#D8DAE0'),thickness: .5,endIndent: 16,indent: 16),
                      Row(children: [
                        TextStore(
                            text: 'Milks & Creamers',
                            fontsize: 16,
                            fontfamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            hexcolor: '#272A3F'),
                        Spacer(),
                        IconButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            Navigator.pushNamed(context, 'routeName');
                          },
                          icon: Icon(Icons.arrow_forward_ios,
                            color: HexColor('#99A0B0'),
                            size: 20,
                          ),
                        )
                      ]),
                      Divider(color: HexColor('#D8DAE0'),thickness: .5,endIndent: 16,indent: 16),
                      Row(children: [
                        TextStore(
                            text: 'RTD & Beverages',
                            fontsize: 16,
                            fontfamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            hexcolor: '#272A3F'),
                        Spacer(),
                        IconButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            Navigator.pushNamed(context, 'routeName');
                          },
                          icon: Icon(Icons.arrow_forward_ios,
                            color: HexColor('#99A0B0'),
                            size: 20,
                          ),
                        )
                      ]),
                      Divider(color: HexColor('#D8DAE0'),thickness: .5,endIndent: 16,indent: 16),
                      Row(children: [
                        TextStore(
                            text: 'Sport & Energy Drinks',
                            fontsize: 16,
                            fontfamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            hexcolor: '#272A3F'),
                        Spacer(),
                        IconButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            Navigator.pushNamed(context, 'routeName');
                          },
                          icon: Icon(Icons.arrow_forward_ios,
                            color: HexColor('#99A0B0'),
                            size: 20,
                          ),
                        )
                      ]),
                      Divider(color: HexColor('#D8DAE0'),thickness: .5,endIndent: 16,indent: 16),
                      Row(children: [
                        TextStore(
                            text: 'Tea',
                            fontsize: 16,
                            fontfamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            hexcolor: '#272A3F'),
                        Spacer(),
                        IconButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            Navigator.pushNamed(context, 'routeName');
                          },
                          icon: Icon(Icons.arrow_forward_ios,
                            color: HexColor('#99A0B0'),
                            size: 20,
                          ),
                        )
                      ]),
                      Divider(color: HexColor('#D8DAE0'),thickness: .5,endIndent: 16,indent: 16),
                      Row(children: [
                        TextStore(
                            text: 'Waters',
                            fontsize: 16,
                            fontfamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            hexcolor: '#272A3F'),
                        Spacer(),
                        IconButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            Navigator.pushNamed(context, 'routeName');
                          },
                          icon: Icon(Icons.arrow_forward_ios,
                            color: HexColor('#99A0B0'),
                            size: 20,
                          ),
                        )
                      ]),
                      SizedBox(height:15),
                    ],
                  ),
                ),
                height: 651,
                width: double.infinity,
              ),
            ),
          )
        ],
      ),
    );
  }
}
