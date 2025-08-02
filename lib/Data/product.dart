import 'dart:ffi';

import 'package:flutter/material.dart';

class productItem {
  final String name;
  final String type;
  final String price;
  final String rating;
  final String image;

  productItem({required this.name, required this.type, required this.price, required this.rating, required this.image});
}

final List<productItem> productItems = [
  productItem(name: 'Modern Light Clothes', type: 'T-Shirt', price: '\$212.99', rating: '5.0',  image: 'lib/asset/product1.png'),
  productItem(name: 'Light Dress Bless', type: 'Dress modern', price: '\$162.99', rating: '5.0',  image: 'lib/asset/product2.png'),
  productItem(name: 'Maroon Dark Top', type: 'Dress', price: '\$194.99', rating: '5.0',  image: 'lib/asset/product3.png'),
  productItem(name: 'Light Dress Yellow', type: 'Dress modern', price: '\$212.99', rating: '5.0',  image: 'lib/asset/product4.png'),
];