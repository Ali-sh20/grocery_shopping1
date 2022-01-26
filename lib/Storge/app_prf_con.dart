import 'package:flutter/src/widgets/framework.dart';
import 'package:grocery_shopping1/models/City.dart';
import 'package:grocery_shopping1/models/Profile.dart';
import 'package:grocery_shopping1/models/baseResponse.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPrefController{

  static final AppPrefController _instance=AppPrefController._internal();

  late SharedPreferences _sharedPreferences;

  factory AppPrefController(){
    return _instance;
  }
  AppPrefController._internal();

  Future<void> initSharedPreferences() async{
    _sharedPreferences= await SharedPreferences.getInstance();
  }

  Future<bool> changePhone(String phone) async{
    return await _sharedPreferences.setString('phone', phone);
  }

  String get phone => _sharedPreferences.getString('phone')??'';

  Future save(Profile profile)async {
    await _sharedPreferences.setBool('logged_in', true);
    await _sharedPreferences.setInt('id', profile.id);
    await _sharedPreferences.setString('name', profile.name);
    await _sharedPreferences.setString('email', profile.email??'');
    await _sharedPreferences.setString('mobile', profile.mobile);
    await _sharedPreferences.setString('gender', profile.gender);
    await _sharedPreferences.setInt('city_id', profile.cityId);
    await _sharedPreferences.setInt('store_id', profile.storeId);
    await _sharedPreferences.setBool('active', profile.active);
    await _sharedPreferences.setBool('verified', profile.verified);
    await _sharedPreferences.setString('token', 'Bearer ' + profile.token);
  }
  Profile get profile{
    Profile profile =Profile();
    profile.id = _sharedPreferences.getInt('id') ?? 0;
    profile.name = _sharedPreferences.getString('name') ?? '';
    profile.email = _sharedPreferences.getString('email') ?? '';
    profile.mobile = _sharedPreferences.getString('mobile') ?? '';
    profile.gender = _sharedPreferences.getString('gender') ?? '';
    profile.cityId = _sharedPreferences.getInt('city_id') ?? 0;
    profile.storeId = _sharedPreferences.getInt('store_id') ?? 0;
    profile.active = _sharedPreferences.getBool('active') ?? false;
    profile.verified = _sharedPreferences.getBool('verified') ?? false;
    return profile;
  }
  bool get isLoggedIn => _sharedPreferences.getBool('logged_in') ?? false;

  Future logout() async {
    await _sharedPreferences.clear();
  }
  String get token => _sharedPreferences.getString('token') ?? '';

  Future saveCity(City city)async{
    await _sharedPreferences.setInt('id', city.id);
    await _sharedPreferences.setString('name_en', city.nameAr);
    await _sharedPreferences.setString('name_ar', city.nameEn);
  }
  City get city{
    City city =City();
    city.id = _sharedPreferences.getInt('id') ?? 0;
    city.nameEn = _sharedPreferences.getString('name_en') ?? '';
    city.nameAr = _sharedPreferences.getString('name_ar') ?? '';
  return city;
  }
}
