import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerflutter/ui/product_page/products.dart';
import 'package:providerflutter/view_model/product_view_model.dart';
import 'package:providerflutter/view_model/products_view_model.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context)=>ProductsViewModel(),),
    ChangeNotifierProvider(create: (context)=>ProductViewModel(),)
  ],
  child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: const ProductsPage(),
    );
  }
}
