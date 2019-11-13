//import
import 'package:flutter/material.dart';

import '../models/products.dart';

class ProductsProvider with ChangeNotifier {
  //props
  List<Products> _items = [
    Products(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://gabazoo.com/wp-content/uploads/2016/07/Cherry_Red_web_1024x1024.jpg',
    ),
    Products(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    ),
    Products(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/61LrCTo8lRL._UY445_.jpg',
    ),
    Products(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    ),
  ];

  //get items
  List<Products> get items {
    return [..._items];
  }

  // grt product by id
  Products getProductById(String id) {
    return _items.firstWhere((product) => product.id == id);
  }
}
