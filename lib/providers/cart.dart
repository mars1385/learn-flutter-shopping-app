//import
import 'package:flutter/foundation.dart';

class CartItem {
  //props
  final String id;
  final String title;
  final double price;
  final int quantity;

  //constuctor
  CartItem({
    @required this.id,
    @required this.title,
    @required this.price,
    @required this.quantity,
  });
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items;

  //get all items
  Map<String, CartItem> get items {
    return {..._items};
  }

  //add item to cart
  void addItem(String productId, String productTitle, double productPrice) {
    if (_items.containsKey(productId)) {
      _items.update(
        productId,
        (existingProduct) => CartItem(
            id: existingProduct.id,
            title: existingProduct.title,
            price: existingProduct.price,
            quantity: existingProduct.quantity + 1),
      );
    } else {
      _items.putIfAbsent(
          productId,
          () => CartItem(
                id: DateTime.now().toString(),
                title: productTitle,
                price: productPrice,
                quantity: 1,
              ));
    }
  }
}
