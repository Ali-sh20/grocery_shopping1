import 'package:grocery_shopping1/models/City.dart';



class BaseResponse {
 late bool status;
 late String message;
 late List<City>? data;

  BaseResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = (json['data'] !=
        null ?BaseResponse.fromJson(json['data']) : null)! as List<City>?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
