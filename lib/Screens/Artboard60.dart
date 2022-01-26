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

class Artboard60 extends StatefulWidget {
  const Artboard60({Key? key}) : super(key: key);

  @override
  _Artboard60State createState() => _Artboard60State();
}

class _Artboard60State extends State<Artboard60> {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor('#FFFFFF'),
        body: Stack(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 95),
                child: SnappingSheet(
                  lockOverflowDrag: true,
                  snappingPositions: [
                    SnappingPosition.factor(
                      grabbingContentOffset: GrabbingContentOffset.bottom,
                      positionFactor: 1.0,
                    ),
                    SnappingPosition.factor(
                      snappingCurve: Curves.elasticOut,
                      snappingDuration: Duration(milliseconds: 1750),
                      positionFactor: 0.5,
                    ),
                    SnappingPosition.factor(
                      positionFactor: 0.1,
                      grabbingContentOffset: GrabbingContentOffset.top,
                    ),
                  ],
                  child: Artboard14(),
                  grabbingHeight: 180,
                  grabbing: DefaultGrabbing(
                    reverse: false,
                  ),
                  sheetAbove: SnappingSheetContent(
                    childScrollController: _scrollController,
                    draggable: true,
                    child: DummyContent(
                      reverse: true,
                      controller: _scrollController,
                    ),
                  ),
                ),
              ),
            ),
            Card_menu()

          ],
        ));
  }
}


