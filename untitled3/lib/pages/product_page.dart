import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled3/const.dart';
import 'package:untitled3/provider/cart_provider.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: _buildUI(context),
    );
  }
}

PreferredSizeWidget _appBar(BuildContext context) {
  return AppBar(
    title: const Text(
      'Products',
    ),
    actions: [
      IconButton(
        onPressed: () {
          Navigator.pushNamed(context, '/cart');
        },
        icon: const Icon(
          Icons.shopping_cart,
        ),
      ),
    ],
  );
}

Widget _buildUI(BuildContext context) {
  CartProvider cartProvider = Provider.of<CartProvider>(context);
  return ListView.builder(
    itemCount: PRODUCTS.length,
    itemBuilder:(context,index){
      Product product =PRODUCTS[index];
      return ListTile(
        leading:  Container(
          height: 25,
          width: 25,
        ),
        title: Text(product.name  ),
        trailing: Checkbox(
          value: cartProvider.items.contains(product),
          onChanged: (value){
            if(value == true){
              cartProvider.add(product);
            }else {
              cartProvider.remove(product);
            }
          },
        ),
      );
    } ,
  );
}
