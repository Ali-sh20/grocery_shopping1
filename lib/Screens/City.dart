import 'package:flutter/material.dart';
import 'package:grocery_shopping1/Storge/app_prf_con.dart';
import 'package:grocery_shopping1/api/CityController.dart';
import 'package:grocery_shopping1/models/Profile.dart';
import 'package:grocery_shopping1/models/City.dart';

class Citys extends StatefulWidget {
  const Citys({Key? key}) : super(key: key);

  @override
  _CitysState createState() => _CitysState();
}

class _CitysState extends State<Citys> {
  List<City> _city = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  FutureBuilder<List<City>>(
        future: UserApiController().getUsers(context),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
            _city=snapshot.data??[];


            return ListView.builder(
              itemCount: _city.length,

              itemBuilder: (context, index) {
                return ListTile(
                    leading: Icon(Icons.person),
                    title: Text('${_city[index].id}   '+_city[index].nameEn),
                    subtitle: Text(_city[index].nameAr));
              },
            );
          }
          else {
            return Center(
              child: Column(
                children: [
                  Icon(
                    Icons.warning,
                    size: 80,
                  ),
                  Text(
                    'No data',
                    style: TextStyle(fontSize: 26),
                  )
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
