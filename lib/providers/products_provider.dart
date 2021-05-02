import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';
import 'package:shop/screens/product_detail_screen.dart';

class Products with ChangeNotifier {
  List<Product> _items = [];

  List<Product> get items {
    return [..._items];
  }

  void addProduct() {
    //_items.add();
    notifyListeners();
  }
}
