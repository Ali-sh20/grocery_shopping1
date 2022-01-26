import 'package:flutter/material.dart';
import 'package:grocery_shopping1/Provider/shopingCart_db_provider.dart';
import 'package:grocery_shopping1/shared/default_grabbing.dart';
import 'package:grocery_shopping1/shared/default_grabbing2.dart';
import 'package:grocery_shopping1/shared/dummy_content.dart';
import 'package:grocery_shopping1/shared/dummy_content2.dart';
import 'package:grocery_shopping1/widgets/Card_Mycart.dart';
import 'package:grocery_shopping1/widgets/Card_menu.dart';
import 'package:grocery_shopping1/widgets/TextStore.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:snapping_sheet/snapping_sheet.dart';

import 'Artboard14.dart';
import 'Artboard20.dart';
import 'Artboard60.dart';

class Artboard62 extends StatefulWidget {
  const Artboard62({Key? key}) : super(key: key);

  @override
  _Artboard62State createState() => _Artboard62State();
}

class _Artboard62State extends State<Artboard62> {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor('#FFFFFF'),
        body: Stack(
          children: [

            Card_menu()

          ],
        ));
  }
}


