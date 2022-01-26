import 'package:flutter/material.dart';
import 'package:grocery_shopping1/Provider/favourite_db_provider.dart';
import 'package:grocery_shopping1/Screens/Artboard21.dart';
import 'package:grocery_shopping1/models/favourite.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

import 'TextStore.dart';

class Card_Artboard14 extends StatefulWidget {
  final String name;
  final String image;
  final String weight;
  final double price;

  Card_Artboard14(
      {required this.name,
        required this.image,
        required this.weight,
        required this.price});

  @override
  _Card_Artboard14State createState() => _Card_Artboard14State();
}

class _Card_Artboard14State extends State<Card_Artboard14> {
  bool _Favourite=true;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      color: HexColor('#FFFFFF'),
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Artboard21(
                    name: widget.name,
                    image: widget.image,
                    weight: widget.weight,
                    price: widget.price),
              ));
        },
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              children: [
                Row(
                  children: [
                    Card(
                      color: HexColor('#D8DAE0'),
                      margin: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: TextStore(
                            text: widget.weight,
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
                        onPressed: () async{
                          setState(() {
                            _Favourite=_Favourite?false:true;
                          });
                          if(_Favourite==true){
                            await Save();
                          }else{
                       //   await delete(value.favourites[index].);
                          }

                        },
                        icon: _Favourite?Icon(Icons.favorite_outline):Icon(Icons.favorite_outlined),
                        color: HexColor(_Favourite?'#D8DAE0':'#29C17E'))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Image.asset(widget.image)],
                ),
                Spacer(),
                SizedBox(height: 0),
                Row(
                  children: [
                    SizedBox(width: 8),
                    TextStore(
                        text: widget.name,
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
                        text: 'Rs.${widget.price}',
                        fontsize: 12,
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
    );
  }
  Future Save() async {
    bool created = await Provider.of<favouriteCartDBProvider>(context,listen: false).create(favourite);
    if(created){
      print('CREATED SUCCESSFULLY');
    }
  }

  Favourite get favourite {
    Favourite note = Favourite();
    favourite.name =widget.name;
    favourite.image =widget.image ;
    favourite.weight =widget.weight ;
    favourite.price =widget.price ;
    return favourite;
  }
  Future delete(int id) async {
    await Provider.of<favouriteCartDBProvider>(context, listen: false).delete(id);
  }


}