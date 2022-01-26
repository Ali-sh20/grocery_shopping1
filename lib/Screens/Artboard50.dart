import 'package:flutter/material.dart';
import 'package:grocery_shopping1/Provider/favourite_db_provider.dart';
import 'package:grocery_shopping1/widgets/Card_Artboard14.dart';
import 'package:provider/provider.dart';


class Artboard50 extends StatefulWidget {
  const Artboard50({Key? key}) : super(key: key);

  @override
  _Artboard50State createState() => _Artboard50State();
}

class _Artboard50State extends State<Artboard50> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<favouriteCartDBProvider>(context, listen: false).read();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Consumer<favouriteCartDBProvider>(
        builder: (BuildContext context, favouriteCartDBProvider value, Widget? child) {
          if (value.favourites.isEmpty) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.warning, size: 80),
                  Text(
                    'NO DATA',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 22,
                    ),
                  )
                ],
              ),
            );
          } else {
            print(value.favourites.length);
            return GridView.builder(
              itemCount: value.favourites.length,
              itemBuilder: (context, index){
                return   Card_Artboard14(
                  image: value.favourites[index].image,
                  price: value.favourites[index].price,
                  name: value.favourites[index].name,
                  weight: value.favourites[index].weight,
                );
              },
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                mainAxisExtent: 120),


         );

          }
        },
      ),
    );
  }

}
