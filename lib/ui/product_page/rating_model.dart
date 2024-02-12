

import 'package:flutter/cupertino.dart';
import 'package:providerflutter/data/models/products_model.dart';

class RatingModel{
  num rate;
  int count;


  RatingModel({
  required this.count,required this.rate
});
  factory RatingModel.fromjson(Map<String,dynamic>json){
    return RatingModel(count: json["count"]??0,
  rate: json["rate"],);


}
}