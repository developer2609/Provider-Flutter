

import 'package:flutter/cupertino.dart';
import 'package:providerflutter/service/api_service/api_service.dart';

import '../data/models/products_model.dart';

class ProductsViewModel extends  ChangeNotifier{
  ProductsViewModel(){
    getAllproducts();
  }

  List produst=[];
  bool isLoading=false;

  void getAllproducts() async{
    changeLoadingstate();
    produst =await ApiService().getAllProducts();
    changeLoadingstate();
  }

   void changeLoadingstate(){
    isLoading=! isLoading;
    notifyListeners();

   }
}