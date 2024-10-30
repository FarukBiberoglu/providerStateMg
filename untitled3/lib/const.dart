import 'package:flutter/material.dart';

class Product {
  final int id;
  final String name;
  final double price;
  final Color color;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.color,
  });
}

final List<Product> PRODUCTS = [
  Product(id: 0, name: 'Laptop', price: 999.99, color: Colors.amber),
  Product(id: 1, name: 'a', price: 999.99, color: Colors.amber),
  Product(id: 2, name: 'b', price: 999.99, color: Colors.amber),
  Product(id: 3, name: 'Lapctop', price: 999.99, color: Colors.amber),
];
