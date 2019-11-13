//import
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products_provider.dart';

class ProductDetailScreen extends StatelessWidget {
  //screen route
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    //product id
    final productId = ModalRoute.of(context).settings.arguments as String;
    //getting product fron state
    final loadedProduct = Provider.of<ProductsProvider>(context, listen: false)
        .getProductById(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
    );
  }
}
