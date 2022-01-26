import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_shopping1/models/bn_screen.dart';
import 'package:grocery_shopping1/views/above_page.dart';
import 'package:grocery_shopping1/views/above_page2.dart';
import 'package:hexcolor/hexcolor.dart';
import 'Artboard50.dart';
import 'Artboard51.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _TabController;
  int _selectedTabIndex = 0;

  List<BnScreen> _screen = <BnScreen>[
    BnScreen(widget: AbovePage(),title:   'Store',icon1: Icons.search,icon2:Icons.notifications_outlined),
    BnScreen(widget: AbovePage2(), title: 'My cart',icon1: Icons.search),
    BnScreen(widget: Artboard50(), title: 'Favourite',icon1:Icons.search,icon2: null),
    BnScreen(widget: Artboard51(), title: 'Profile',icon1: null,icon2: null),
  ];
  @override
  void dispose() {
    // TODO: implement dispose
    _TabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _TabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#F4F7FA'),
      appBar: AppBar(
        backgroundColor: HexColor('#29C17E'),
        title: Text(
          _screen.elementAt(_selectedTabIndex).title,
          style: TextStyle(
              fontSize: 20,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              color: HexColor('#FFFFFF')),
        ),
          actions: [
            _selectedTabIndex==0?
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/Artboard15');
                        },
                        icon: Icon(_screen.elementAt(_selectedTabIndex).icon1)),
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/Artboard16');
                      },
                      icon: Icon(_screen.elementAt(_selectedTabIndex).icon2),
                    )
                  ],
                ):
            _selectedTabIndex==1?
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Artboard15');
                },
                icon: Icon(_screen.elementAt(_selectedTabIndex).icon1)):
            _selectedTabIndex==2?
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Artboard15');
                },
                icon: Icon(_screen.elementAt(_selectedTabIndex).icon1)):
            IconButton(
                onPressed: () {
                },
                icon: Icon(_screen.elementAt(_selectedTabIndex).icon1))
          ]
        ,
        leading: IconButton(onPressed: (){
          _selectedTabIndex==0?
          Navigator.pushNamed(context, '/Artboard60'):
          _selectedTabIndex==1?
          Navigator.pushNamed(context, '/Artboard61'):
          _selectedTabIndex==2?
          Navigator.pushNamed(context, '/Artboard62'):
          Navigator.pushNamed(context, '/Artboard63');

        }, icon: Icon(Icons.menu)),

        bottom: TabBar(
          onTap: (int selectedTabIndex) {
            setState(() {
              _selectedTabIndex = selectedTabIndex;
            });
          },
          controller: _TabController,

          indicatorColor: HexColor('#FFFFFF'),

          // labelColor: Colors.redAccent,
          unselectedLabelColor: HexColor('#1F915F'),
          tabs: [
            Tab(icon: Icon(Icons.storefront_outlined)),
            Tab(icon: Icon(Icons.shopping_basket_outlined)),
            Tab(icon: Icon(Icons.favorite_outline_rounded)),
            Tab(icon: Icon(Icons.assignment_ind_outlined)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _TabController,
        children: [
          _screen.elementAt(0).widget,
          _screen.elementAt(1).widget,
          _screen.elementAt(2).widget,
          _screen.elementAt(3).widget
        ],
      ),
    );
  }
}
