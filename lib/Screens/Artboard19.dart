import 'package:flutter/material.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';

class Artboard19 extends StatefulWidget {
  const Artboard19({Key? key}) : super(key: key);

  @override
  _Artboard19State createState() => _Artboard19State();
}

class _Artboard19State extends State<Artboard19> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#29C17E'),
        elevation: 5,
        title: Text(
          'Coffee',
          style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: HexColor('#FFFFFF')),
        ),
        actions: [ IconButton(
            onPressed: () {},
            icon:
            Icon(Icons.search, color: HexColor('#FFFFFF'), size: 30)),
    ]
    ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        child: GridView(
          scrollDirection: Axis.vertical,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              mainAxisExtent: 187
          ),
          children: [
            Card(
              elevation: 15,
              color: HexColor('#FFFFFF'),
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '');
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Card(
                              color: HexColor('#D8DAE0'),
                              margin: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(2),
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                child: TextStore(
                                    text: '50G',
                                    fontsize: 8,
                                    fontfamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                    hexcolor: '#6E7989'),
                                height: 15,
                                width: 27.6,
                              ),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_outline_rounded,
                                  color: HexColor('#D8DAE0'),
                                )),
                            //IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outlined))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('images/Group_1091.png')
                          ],
                        ),
                        Spacer(),
                        SizedBox(height: 7.3),
                        Row(
                          children: [
                            TextStore(
                                text: 'Khao Shong Ag...',
                                fontsize: 10,
                                fontfamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                hexcolor: '#6E7989'),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            SizedBox(width: 8),
                            TextStore(
                                text: 'Rs.470.00',
                                fontsize: 10,
                                fontfamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                hexcolor: '#272A3F'),
                          ],
                        ),
                        SizedBox(height: 13),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 15,
              color: HexColor('#FFFFFF'),
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '');
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Card(
                              color: HexColor('#D8DAE0'),
                              margin: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(2),
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                child: TextStore(
                                    text: '50G',
                                    fontsize: 8,
                                    fontfamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                    hexcolor: '#6E7989'),
                                height: 15,
                                width: 27.6,
                              ),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_outline_rounded,
                                  color: HexColor('#D8DAE0'),
                                )),
                            //IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outlined))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('images/Group_1096.png')
                          ],
                        ),
                        Spacer(),
                        SizedBox(height: 7.3),
                        Row(
                          children: [
                            TextStore(
                                text: 'Khao Shong...',
                                fontsize: 10,
                                fontfamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                hexcolor: '#6E7989'),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [

                            TextStore(
                                text: 'Rs.450.00',
                                fontsize: 10,
                                fontfamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                hexcolor: '#272A3F'),
                          ],
                        ),
                        SizedBox(height: 13),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 15,
              color: HexColor('#FFFFFF'),
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '');
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Card(
                              color: HexColor('#D8DAE0'),
                              margin: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(2),
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                child: TextStore(
                                    text: '100G',
                                    fontsize: 8,
                                    fontfamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                    hexcolor: '#6E7989'),
                                height: 15,
                                width: 27.6,
                              ),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_outline_rounded,
                                  color: HexColor('#D8DAE0'),
                                )),
                            //IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outlined))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('images/Rectangle_347.png')
                          ],
                        ),
                        Spacer(),
                        SizedBox(height: 7.3),
                        Row(
                          children: [

                            TextStore(
                                text: 'Nescafe Gold',
                                fontsize: 10,
                                fontfamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                hexcolor: '#6E7989'),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [

                            TextStore(
                                text: 'Rs.1,700.00',
                                fontsize: 10,
                                fontfamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                hexcolor: '#272A3F'),
                          ],
                        ),
                        SizedBox(height: 13),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 15,
              color: HexColor('#FFFFFF'),
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '');
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Card(
                              color: HexColor('#D8DAE0'),
                              margin: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(2),
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                child: TextStore(
                                    text: '50G',
                                    fontsize: 8,
                                    fontfamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                    hexcolor: '#6E7989'),
                                height: 15,
                                width: 27.6,
                              ),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_outline_rounded,
                                  color: HexColor('#D8DAE0'),
                                )),
                            //IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outlined))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('images/Rectangle_350.png')
                          ],
                        ),
                        Spacer(),
                        SizedBox(height: 7.3),
                        Row(
                          children: [
                            TextStore(
                                text: 'Nescafe Classic',
                                fontsize: 10,
                                fontfamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                hexcolor: '#6E7989'),
                          ],
                        ),
                        SizedBox(height: 3.5),
                        Row(
                          children: [
                            TextStore(
                                text: 'Rs.470.00',
                                fontsize: 10,
                                fontfamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                hexcolor: '#272A3F'),
                          ],
                        ),
                        SizedBox(height: 13),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 15,
              color: HexColor('#FFFFFF'),
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '');
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Card(
                              color: HexColor('#D8DAE0'),
                              margin: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(2),
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                child: TextStore(
                                    text: '100G',
                                    fontsize: 8,
                                    fontfamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                    hexcolor: '#6E7989'),
                                height: 15,
                                width: 27.6,
                              ),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_outline_rounded,
                                  color: HexColor('#D8DAE0'),
                                ),
                            ),
                            //IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outlined))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('images/Rectangle_351.png')
                          ],
                        ),
                        //Spacer(),
                        SizedBox(height: 7.3),
                        Row(
                          children: [
                            TextStore(
                                text: 'Nescafe Latte',
                                fontsize: 10,
                                fontfamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                hexcolor: '#6E7989'),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            TextStore(
                                text: 'Rs.950.00',
                                fontsize: 10,
                                fontfamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                hexcolor: '#272A3F'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
