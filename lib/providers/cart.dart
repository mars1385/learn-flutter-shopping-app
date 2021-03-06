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
  Map<String, CartItem> _items = {};
  //get all items
  Map<String, CartItem> get items {
    return {..._items};
  }

  //get item count
  int get itemCount {
    int count = 0;
    _items.forEach((id, item) => count += item.quantity);
    return count;
  }

  double get cartItemsAmount {
    double amount = 0;
    _items.forEach((key, item) => amount += item.price * item.quantity);
    return amount;
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
    notifyListeners();
  }

  //remove from cart
  void removeItem(String productId) {
    _items.remove(productId);
    notifyListeners();
  }

  // undo
  void removeSingleItem(String productId) {
    if (!_items.containsKey(productId)) return;

    if (_items[productId].quantity > 1) {
      _items.update(
        productId,
        (existingProduct) => CartItem(
            id: existingProduct.id,
            title: existingProduct.title,
            price: existingProduct.price,
            quantity: existingProduct.quantity - 1),
      );
    } else {
      _items.remove(productId);
    }
    notifyListeners();
  }

  //clear cart
  void clearCart() {
    _items = {};
    notifyListeners();
  }
}
