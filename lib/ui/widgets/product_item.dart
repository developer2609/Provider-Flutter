import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:providerflutter/data/models/products_model.dart';
import 'package:providerflutter/ui/describtion_page/describtion_page.dart';

class ProductItem extends StatelessWidget {
  ProductModel productModel;
   ProductItem({required this.productModel,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>DescribtionPAge(productModel: productModel,)));
        },
        child: ListTile(
          title: Image.network(productModel.image,height: 120,),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(productModel.title,style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),
              Text(productModel.price.toString(),style: TextStyle(fontWeight: FontWeight.w700,color: Colors.green),)
            ],
          ),
        ),
      );
    ;
  }
}
