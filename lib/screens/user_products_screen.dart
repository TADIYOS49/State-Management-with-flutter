import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/widgets/app_drawer.dart';
import 'package:shop/widgets/user_product_item.dart';

import '../providers/products.dart';

class UserProductsScreen extends StatelessWidget {
  static const routeName = '/userproduct';
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final products = productData.items;
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Products!'),
        actions: [IconButton(icon: Icon(Icons.add), onPressed: () {})],
      ),
      drawer: AppDrawer(),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (_, i) => Column(
                    children: [
                      UserProductItem(products[i].title, products[i].imageUrl),
                      Divider(),
                    ],
                  ))),
    );
  }
}
