


import 'package:providerflutter/data/models/products_model.dart';
import 'package:providerflutter/service/api_service/api_service.dart';
import 'package:providerflutter/view_model/product_view_model.dart';

class ProductsRepository{

  Future<List<ProductModel>> getAllProducts() async =>await ApiService().getAllProducts();
  static Future<List<ProductModel>> getSingleProducts(int id) async =>await ApiService().getSingleProduct(id);

}