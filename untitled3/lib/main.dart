import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled3/pages/cart_page.dart';
import 'package:untitled3/pages/product_page.dart';
import 'package:untitled3/provider/cart_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create:(context)=>CartProvider() ,
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Provider',
      initialRoute: '/products',
      routes: {
        '/products': (context) => const ProductPage(),
        '/cart': (context) => const CartPage(),
      },
    );
  }
}
