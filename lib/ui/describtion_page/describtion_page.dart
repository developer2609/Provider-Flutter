
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerflutter/data/models/products_model.dart';
import 'package:providerflutter/view_model/product_view_model.dart';

class DescribtionPAge extends StatefulWidget {
  ProductModel productModel;
   DescribtionPAge({required this.productModel ,Key? key}) : super(key: key);

  @override
  State<DescribtionPAge> createState() => _DescribtionPAgeState();
}

class _DescribtionPAgeState extends State<DescribtionPAge> {
  @override
  void initState() {
    context.read<ProductViewModel>().getSingleProduct(widget.productModel.id);

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Describtion PAge"),
      ),
      body: Consumer<ProductViewModel>(
         builder: (context,value,child){
           if(value.isLoading){
             return Center(child: CircularProgressIndicator(),);
           }
          else if(value.products == null){
             return Center(
               child: Text("data bor"),
             );
           }else{
             return Container(

             );
           }
         },
      ),
    );
  }
}
