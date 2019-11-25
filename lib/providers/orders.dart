//import
import 'package:flutter/cupertino.dart';

import './cart.dart';

class OrdersItem {
  //props
  final String id;
  final double amount;
  final List<CartItem> products;
  final DateTime date;
  //
  OrdersItem({
    @required this.id,
    @required this.amount,
    @required this.products,
    @required this.date,
  });
}

class Orders with ChangeNotifier {
  List<OrdersItem> _orders = [];

  //get all orders
  List<OrdersItem> get orders {
    return [..._orders];
  }

  //add orders
  void addOrders(List<CartItem> cartProducts, double total) {
    _orders.insert(
      0,
      OrdersItem(
        id: DateTime.now().toString(),
        amount: total,
        products: cartProducts,
        date: DateTime.now(),
      ),
    );
    notifyListeners();
  }
}
