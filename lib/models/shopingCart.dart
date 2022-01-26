class shopingCart{
  late int id;
  late String name;
  late String image;
  late String weight;
  late double amount;
  late double total;
  late double price;

  shopingCart();

  shopingCart.fromMap(Map<String,dynamic>rowMap){
    id=rowMap['id'];
    name=rowMap['name'];
    image=rowMap['image'];
    weight=rowMap['weight'];
    amount=rowMap['amount'];
    total=rowMap['total'];
    price=rowMap['price'];
  }

  Map<String,dynamic> toMap(){
    Map<String,dynamic> map=Map<String,dynamic>();
    map['name']=name;
    map['image']=image;
    map['weight']=weight;
    map['amount']=amount;
    map['total']=total;
    map['price']=price;
    return map;

  }
}
