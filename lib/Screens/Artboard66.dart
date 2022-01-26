import 'package:flutter/material.dart';
import 'package:grocery_shopping1/models/bn_screen.dart';
import 'package:grocery_shopping1/widgets/Card_%D9%8DStorelocatort.dart';
import 'package:grocery_shopping1/widgets/Card_%D9%8Dorderhistory.dart';
import 'package:hexcolor/hexcolor.dart';

import 'Artboard67.dart';

class Artboard66 extends StatefulWidget {
  const Artboard66({Key? key}) : super(key: key);

  @override
  _Artboard66State createState() => _Artboard66State();
}

class _Artboard66State extends State<Artboard66>
    with SingleTickerProviderStateMixin {
  late TabController _TabController3;
  int _selectedTabIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _TabController3 = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _TabController3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#29C17E'),
        title: Text(
          'Store locator',
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
          GestureDetector(onTap: () {}, child: Icon(Icons.search)),
        ],
        bottom: TabBar(
          controller: _TabController3,

          indicatorColor: HexColor('#FFFFFF'),

          // labelColor: Colors.redAccent,
          unselectedLabelColor: HexColor('#9DE2C4'),
          unselectedLabelStyle:
              TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          tabs: [
            Tab(text: 'ALL STORES'),
            Tab(text: 'NEARBY'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _TabController3,
        children: [
          Artboard_66(),
          Artboard67(),
        ],
      ),
    );
  }
}

class Artboard_66 extends StatelessWidget {
  const Artboard_66({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 16),
      child: Column(
        children: [
          Card_Storelocator(
              text1: 'Aluthgama',
              fontsize1: 20,
              fontWeight1: FontWeight.w500,
              hexcolor1: '#272A3F',
              text2:
                  'Aluthgama, “Ruwangiri”,\nKaluwamodara, Galle Road,\nAluthgama.',
              fontsize2: 14,
              fontWeight2: FontWeight.w400,
              hexcolor2: '#6E7989',
              colorcircle: '#29C17E'),
          SizedBox(height: 8),
          Card_Storelocator(
              text1: 'Arangala',
              fontsize1: 20,
              fontWeight1: FontWeight.w500,
              hexcolor1: '#272A3F',
              text2: 'Arangala, #730, Malambe Road,\nArangala, Athurugiriya.',
              fontsize2: 14,
              fontWeight2: FontWeight.w400,
              hexcolor2: '#6E7989',
              colorcircle: '#29C17E'),
          SizedBox(height: 8),
          Card_Storelocator(
              text1: 'Aththidiya',
              fontsize1: 20,
              fontWeight1: FontWeight.w500,
              hexcolor1: '#272A3F',
              text2: 'Aththidiya, #208, Attidiya Road,\nBellanthotha',
              fontsize2: 14,
              fontWeight2: FontWeight.w400,
              hexcolor2: '#6E7989',
              colorcircle: '#29C17E'),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
