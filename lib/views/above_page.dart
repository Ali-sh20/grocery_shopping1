import 'package:flutter/material.dart';
import 'package:grocery_shopping1/Screens/Artboard14.dart';
import 'package:grocery_shopping1/shared/default_grabbing.dart';
import 'package:grocery_shopping1/shared/dummy_content.dart';
import 'package:snapping_sheet/snapping_sheet.dart';


class AbovePage extends StatelessWidget {
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
    );
  }
}
