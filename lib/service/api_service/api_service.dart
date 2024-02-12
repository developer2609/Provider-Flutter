import 'package:dio/dio.dart';
import 'package:providerflutter/data/models/products_model.dart';

class ApiService {
  Future getAllProducts()async{
    Dio dio=Dio();
    Response response=  await dio.get("https://fakestoreapi.com/products");
    if(response.statusCode==200){
      List products = response.data.map((e)=>ProductModel.fromjson(e)).toList() ;
      return products;
    }
  }
  Future getSingleProduct(int id) async{

    Dio dio=Dio();
    Response response=  await dio.get("https://fakestoreapi.com/products/$id");
    if(response.statusCode==200){
      return ProductModel.fromjson(response.data);
    }
  }
}