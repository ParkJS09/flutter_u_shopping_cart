import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart/components/shopping_detail.dart';
import 'package:flutter_shoppingcart/components/shoppingcart_header.dart';
import 'package:flutter_shoppingcart/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme(),
      home: ShoppingCartPage(),
    );
  }
}


class ShoppingCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildShoppingCartAppBar(),
      body: Column(
        children: [
          ShoppingCartHeader(),
          ShoppingCartDetail()
        ],
      ),
    );
  }

  AppBar _buildShoppingCartAppBar(){
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: (){
          print("onClick Back Button");
        },
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: (){
            print("onClick shopping cart");
          },
        ),
        SizedBox(width: 16.0)
      ],
      elevation: 0.0,
    );
  }
}

