import 'package:flutter/material.dart';
import 'package:grocery_shopping1/Screens/Artboard20.dart';
import 'package:grocery_shopping1/shared/default_grabbing2.dart';
import 'package:grocery_shopping1/shared/dummy_content2.dart';
import 'package:snapping_sheet/snapping_sheet.dart';


class AbovePage2 extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SnappingSheet(
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
        child: Artboard20(),
        grabbingHeight: 100,
        grabbing: DefaultGrabbing2(
          reverse: false,
        ),
        sheetAbove: SnappingSheetContent(
          childScrollController: _scrollController,
          draggable: true,
          child: DummyContent2(
            reverse: true,
            controller: _scrollController,
          ),
        ),
      ),
    );
  }
}
