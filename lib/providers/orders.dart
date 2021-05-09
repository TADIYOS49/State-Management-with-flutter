import 'package:flutter/material.dart';

import './cart.dart';

class OrderItem {
  final String id;
  final double amount;
  final List<CartItem> products;
  final DateTime datatime;

  OrderItem({this.id, this.amount, this.products, this.datatime});
}

class Orders with ChangeNotifier {
  List<OrderItem> _orders = [];
  List<OrderItem> get orders {
    return [..._orders];
  }

  void addOrder(List<CartItem> cartProducts, double total) {
    if (total == 0) {
    } else {
      _orders.insert(
          0,
          OrderItem(
              id: DateTime.now().toString(),
              amount: total,
              products: cartProducts,
              datatime: DateTime.now()));
      notifyListeners();
    }
  }
}
