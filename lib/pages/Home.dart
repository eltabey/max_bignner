import 'package:flutter/material.dart';
import 'package:max_1/products_manager.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: ProductManager() //startingProduct: 'Food Tester',
    );
  }
}
