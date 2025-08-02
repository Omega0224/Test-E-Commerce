import 'package:e_commerce/Data/product.dart';
import 'package:e_commerce/view/widget/productCard.dart';
import 'package:flutter/material.dart';

class productList extends StatelessWidget {
  const productList({super.key});

  @override
  Widget build(BuildContext context) {
    // Bagi produk jadi 2 list untuk kiri dan kanan
    final List leftItems = [];
    final List rightItems = [];

    for (int i = 0; i < productItems.length; i++) {
      if (i % 2 == 0) {
        leftItems.add(productItems[i]);
      } else {
        rightItems.add(productItems[i]);
      }
    }

    return Expanded(
      child: SingleChildScrollView(
        padding: EdgeInsets.only(top: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Kolom kiri
            Expanded(
              child: Column(
                children: List.generate(leftItems.length, (index) {
                  final item = leftItems[index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: 16),
                    child: productCard(
                      item: item,
                      height: 298,
                      imgHeight: 217,
                    ),
                  );
                }),
              ),
            ),
            // Kolom kanan
            Expanded(
              child: Column(
                children: List.generate(rightItems.length, (index) {
                  final item = rightItems[index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: 16),
                    child: productCard(
                      item: item,
                      height: 332,
                      imgHeight: 251,
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
