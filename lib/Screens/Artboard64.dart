import 'package:flutter/material.dart';
import 'package:grocery_shopping1/models/bn_screen.dart';
import 'package:grocery_shopping1/widgets/Card_%D9%8Dorderhistory.dart';
import 'package:hexcolor/hexcolor.dart';

class Artboard64 extends StatefulWidget {
  const Artboard64({Key? key}) : super(key: key);

  @override
  _Artboard64State createState() => _Artboard64State();
}

class _Artboard64State extends State<Artboard64>
    with SingleTickerProviderStateMixin {
    late TabController _TabController2;
    int _selectedTabIndex = 0;

  List<BnScreen> _screen = <BnScreen>[
    BnScreen(widget: Artboard_64(),title: 'COMPLETED'),
    BnScreen(widget: Artboard_64(), title: 'UP COMMING'),
    BnScreen(widget: Artboard_64(), title: 'CANCELLED'),
  ];
  @override
  void dispose() {
    // TODO: implement dispose
    _TabController2.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _TabController2 = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#29C17E'),
        title: Text(
          'Order history',
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
          onTap: (int selectedTabIndex) {
            setState(() {
              _selectedTabIndex = selectedTabIndex;
            });
          },
          controller: _TabController2,

          indicatorColor: HexColor('#FFFFFF'),

          // labelColor: Colors.redAccent,
          unselectedLabelColor: HexColor('#9DE2C4'),
          unselectedLabelStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),
          tabs: [
            Tab(text: 'COMPLETED'),
            Tab(text: 'UP COMMING'),
            Tab(text: 'CANCELLED'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _TabController2,
        children: [
          _screen.elementAt(0).widget,
          _screen.elementAt(1).widget,
          _screen.elementAt(2).widget,
        ],
      ),
    );
  }
}

class Artboard_64 extends StatelessWidget {
  const Artboard_64({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 16),
      child: Column(
        children: [
          Card_orderhistory(
              text1: '6 April 2020',
              fontsize1: 20,
              fontWeight1: FontWeight.w500,
              hexcolor1: '#272A3F',
              text2: 'Subtotal Rs. 1,820.00',
              fontsize2: 16,
              fontWeight2: FontWeight.w500,
              hexcolor2: '#272A3F',
              text3: 'Total items: 04',
              fontsize3: 14,
              fontWeight3: FontWeight.w400,
              hexcolor3: '#6E7989',
              colorcircle: '#29C17E'),
          SizedBox(height: 8),
          Card_orderhistory(
              text1: '30 March 2020',
              fontsize1: 20,
              fontWeight1: FontWeight.w500,
              hexcolor1: '#272A3F',
              text2: 'Subtotal Rs. 5,300.00',
              fontsize2: 16,
              fontWeight2: FontWeight.w500,
              hexcolor2: '#272A3F',
              text3: 'Total items: 15',
              fontsize3: 14,
              fontWeight3: FontWeight.w400,
              hexcolor3: '#6E7989',
              colorcircle: '#29C17E'),
        ],
      ),
    );
  }
}
