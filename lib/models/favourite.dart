class Favourite{
  late int id;
  late String name;
  late String image;
  late String weight;
  late double price;

  Favourite();

  Favourite.fromMap(Map<String,dynamic>rowMap){
    id=rowMap['id'];
    name=rowMap['name'];
    image=rowMap['image'];
    weight=rowMap['weight'];
    price=rowMap['price'];
  }

  Map<String,dynamic> toMap(){
    Map<String,dynamic> map=Map<String,dynamic>();
    map['name']=name;
    map['image']=image;
    map['weight']=weight;
    map['price']=price;
    return map;
  }
}
