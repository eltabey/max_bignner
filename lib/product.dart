import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products([this.products = const []]) {
    print('[Products Widget] Constructor');
  }

  Widget _builderProdactItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Text(products[index]),
          ButtonBar(
            children: <Widget>[
              FlatButton(onPressed: () {}, child: Text("Details"))
            ],
          )
        ],
      ),
    );
  }

  Widget _buildproductslist() {
    Widget productsCaeds;
    if (products.length > 0) {
      ListView.builder(
        itemBuilder: _builderProdactItem,
        itemCount: products.length,
      );
    } else {
      Center(
        child: Text("NO products fouend,plese add sum"),
      );
    }
    return productsCaeds;
  }

  @override
  Widget build(BuildContext context) {
    print('[Products Widget] build()');
    return _buildproductslist();

    /*products.length > 0
        ? ListView.builder(
            itemBuilder: _builderProdactItem,
            itemCount: products.length,
          )
        : Center(
            child: Text("NO products fouend,plese add sum"),
          );*/
  }
}
