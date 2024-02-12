
import 'package:flutter/cupertino.dart';
import 'package:providerflutter/data/models/products_model.dart';

import '../data/repisotory_dart/product_repository.dart';


class ProductViewModel extends  ChangeNotifier{

     ProductModel? products;
  bool isLoading=false;

  void getSingleProduct(int id) async{
     changeLoadingstate();
    products =(await ProductsRepository.getSingleProducts(id)) as ProductModel?;
     changeLoadingstate();
  }

  void changeLoadingstate(){
    isLoading=! isLoading;
    notifyListeners();

  }
}