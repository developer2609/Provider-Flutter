 import '../../ui/product_page/rating_model.dart';

class ProductModel{

 int id;
 String title;
 num price;
 String describtion;
 String category;
 String image;
 RatingModel ratingModel;

   ProductModel({
  required this.title,
    required this.id,
    required this.ratingModel,
    required this.price,
    required this.category,
    required this.image,
    required this.describtion,
 });


 factory ProductModel.fromjson(Map<String,dynamic>json){
  return ProductModel(
      title: json["title"]??"",
      id: json["id"]??0 ,
      price: json["price"]??0 ,
      category: json["category"]??"",
      image: json["image"]??"",
      describtion: json["describtion"]??"",
   ratingModel: RatingModel.fromjson(json["rating"]??{}),
  );


 }



 }