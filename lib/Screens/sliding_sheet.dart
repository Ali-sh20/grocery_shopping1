import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class sliding_sheet extends StatefulWidget {
  const sliding_sheet({Key? key}) : super(key: key);

  @override
  _sliding_sheetState createState() => _sliding_sheetState();
}

class _sliding_sheetState extends State<sliding_sheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text('Simple Example'),
      ),
      body: Stack(
        children: [
          SlidingSheet(
            elevation: 8,
            cornerRadius: 16,
            snapSpec: const SnapSpec(
              snap: true,
              snappings: [100, 400, double.infinity],
              positioning: SnapPositioning.pixelOffset,
            ),
            builder: (context, state) {
              return Container(
                height: 500,
                child: Center(
                  child: Text(
                    'This is the content of the sheet',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              );
            },
            headerBuilder: (context, state) {
              return Container(
                height: 100,
                width: double.infinity,
                color: Colors.green,
                alignment: Alignment.center,
                child: Text(
                  'This is the header000',
                    style: TextStyle(color: HexColor('#ffffff'))
                ),
              );
            },
            // footerBuilder: (context, state) {
            //   return Container(
            //     height: 56,
            //     width: double.infinity,
            //     color: Colors.yellow,
            //     alignment: Alignment.center,
            //     child: Text(
            //       'This is the footer',
            //       style: TextStyle(color: HexColor('#ffffff'))
            //     ),
            //   );
            // },
          ),
        ],
      ),
    );
  }
}

