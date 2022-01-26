//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:grocery_shopping1/Storge/app_prf_con.dart';
import 'package:grocery_shopping1/Storge/db_provider.dart';
import 'package:grocery_shopping1/views/above_page.dart';
import 'package:provider/provider.dart';
import 'Provider/shopingCart_db_provider.dart';
import 'Screens/Artboard001.dart';
import 'Screens/Artboard1.dart';
import 'Screens/Artboard12..dart';
import 'Screens/Artboard14.dart';
import 'Screens/Artboard15.dart';
import 'Screens/Artboard16.dart';
import 'Screens/Artboard17.dart';
import 'Screens/Artboard18.dart';
import 'Screens/Artboard19.dart';
import 'Screens/Artboard2.dart';
import 'Screens/Artboard20.dart';
import 'Screens/Artboard24.dart';
import 'Screens/Artboard25.dart';
import 'Screens/Artboard27.dart';
import 'Screens/Artboard30.dart';
import 'Screens/Artboard32.dart';
import 'Screens/Artboard35.dart';
import 'Screens/Artboard37.dart';
import 'Screens/Artboard4.dart';
import 'Screens/Artboard41.dart';
import 'Screens/Artboard42.dart';
import 'Screens/Artboard44.dart';
import 'Screens/Artboard46.dart';
import 'Screens/Artboard50.dart';
import 'Screens/Artboard51.dart';
import 'Screens/Artboard52.dart';
import 'Screens/Artboard53.dart';
import 'Screens/Artboard54.dart';
import 'Screens/Artboard55.dart';
import 'Screens/Artboard56.dart';
import 'Screens/Artboard6.dart';
import 'Screens/Artboard60.dart';
import 'Screens/Artboard61.dart';
import 'Screens/Artboard62.dart';
import 'Screens/Artboard63.dart';
import 'Screens/Artboard64.dart';
import 'Screens/Artboard65.dart';
import 'Screens/Artboard66.dart';
import 'Screens/Artboard67.dart';
import 'Screens/Artboard68.dart';
import 'Screens/Artboard69.dart';
import 'Screens/Artboard70.dart';
import 'Screens/Artboard8.dart';
import 'Screens/Artboard9.dart';
import 'Screens/Change_password.dart';
import 'Screens/City.dart';
import 'Screens/HomeScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppPrefController().initSharedPreferences();
  await DBProvider().initDatabase();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<ShoppingCartDBProvider>(
              create: (_) => ShoppingCartDBProvider()),
        ],
        child:
        MaterialApp(
            debugShowCheckedModeBanner: false,

            home: Artboard001(),
            initialRoute: '/Artboard001',

            routes: {
              '/Artboard1': (context) => Artboard1(),
              '/Artboard001': (context) => Artboard001(),
              '/Artboard2': (context) => Artboard2(),
              '/Artboard9': (context) => Artboard9(),
              '/Artboard4': (context) => Artboard4(),
              '/Artboard6': (context) => Artboard6(),
              '/Artboard8': (context) => Artboard8(),
              '/Artboard12': (context) => Artboard12(),
              '/HomeScreen': (context) => HomeScreen(),
              '/Artboard14': (context) => Artboard14(),
             '/Artboard15': (context) => Artboard15(),
              '/Artboard16': (context) => Artboard16(),
              '/Artboard17': (context) => Artboard17(),
              '/Artboard18': (context) => Artboard18(),
              '/AbovePage':  (context) => AbovePage(),
              '/Artboard19': (context) => Artboard19(),
              '/Artboard20': (context) => Artboard20(),
              '/Artboard24': (context) => Artboard24(),
              '/Artboard25': (context) => Artboard25(),
              '/Artboard27': (context) => Artboard27(),
              '/Artboard35': (context) => Artboard35(),
              '/Artboard30': (context) => Artboard30(),
              '/Artboard32': (context) => Artboard32(),
              '/Artboard37': (context) => Artboard37(),
              '/Artboard41': (context) => Artboard41(),
              '/Artboard42': (context) => Artboard42(),
              '/Artboard44': (context) => Artboard44(),
              '/Artboard46': (context) => Artboard46(),
              '/Artboard50': (context) => Artboard50(),
              '/Artboard51': (context) => Artboard51(),
              '/Artboard52': (context) => Artboard52(),
              '/Artboard53': (context) => Artboard53(),
              '/Artboard54': (context) => Artboard54(),
              '/Artboard55': (context) => Artboard55(),
              '/Artboard56': (context) => Artboard56(),
              '/Artboard60': (context) => Artboard60(),
              '/Artboard61': (context) => Artboard61(),
              '/Artboard62': (context) => Artboard62(),
              '/Artboard63': (context) => Artboard63(),
              '/Artboard64': (context) => Artboard64(),
              '/Artboard65': (context) => Artboard65(),
              '/Artboard66': (context) => Artboard66(),
              '/Artboard67': (context) => Artboard67(),
              '/Artboard68': (context) => Artboard68(),
              '/Artboard69': (context) => Artboard69(),
              '/Artboard70': (context) => Artboard70(),
              '/Change_password': (context) => Change_password(),
              '/Citys': (context) => Citys(),
            },
        ),
    );
  }
}

