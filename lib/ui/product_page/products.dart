import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerflutter/ui/widgets/product_item.dart';
import 'package:providerflutter/view_model/products_view_model.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text("Products Page"),),
      body: Consumer<ProductsViewModel>(builder: (context,myprovider,child){
        if(myprovider.isLoading){
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if(myprovider.produst.isNotEmpty){
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent:MediaQuery.of(context).size.width*0.5 ,
                 childAspectRatio: 3/3.4,
                crossAxisSpacing: 20,
              mainAxisSpacing: 20
            ),
              shrinkWrap: true,
              itemCount: myprovider.produst.length,
              itemBuilder: (context,index)=>
            ProductItem(productModel: myprovider.produst[index],));
        }
        else{
          return Text("Data kelmadi");

        }
      }),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){
      //     context.read<ProductsViewModel>().getAllproducts();
      //   },
      // ),
    );
  }
}
