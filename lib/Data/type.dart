import 'package:flutter/material.dart';

class typeItem {
  final String name;
  final IconData? icon;
  final String? image;

  typeItem({required this.name, this.icon, this.image});
}

final List<typeItem> typeItems = [
  typeItem(name: 'All Items', icon: Icons.grid_view_outlined),
  typeItem(name: 'Dress', image: 'lib/asset/dress.png'),
  typeItem(name: 'T-Shirt', image: 'lib/asset/tshirt.png'),
  typeItem(name: 'Jeans', image: 'lib/asset/jeans.png'),
];
