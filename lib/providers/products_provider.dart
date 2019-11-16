//import
import 'package:flutter/material.dart';

import './product.dart';

class ProductsProvider with ChangeNotifier {
  //props
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://gabazoo.com/wp-content/uploads/2016/07/Cherry_Red_web_1024x1024.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/61LrCTo8lRL._UY445_.jpg',
    ),
    Product(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    ),
  ];

  //get items
  List<Product> get items {
    return [..._items];
  }

  //get favorite items
  List<Product> get favoriteItems {
    return _items.where((product) => product.isFavorite).toList();
  }

  // grt product by id
  Product getProductById(String id) {
    return _items.firstWhere((product) => product.id == id);
  }
}
