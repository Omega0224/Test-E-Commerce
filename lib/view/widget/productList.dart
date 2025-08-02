import 'package:e_commerce/Data/product.dart';
import 'package:e_commerce/material/color.dart';
import 'package:e_commerce/view/widget/productCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class productList extends StatefulWidget {
  const productList({super.key});

  @override
  State<productList> createState() => _productListState();
}

class _productListState extends State<productList> {
  @override
  Widget build(BuildContext context) {
    final int pageCount = (productItems.length/2).ceil();

    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: pageCount,
        itemBuilder: (context, pageIndex) {
          final int firstIndex = pageIndex * 2;
          final int secondIndex = firstIndex + 1;

          return Row(
            children: [
              if (firstIndex < productItems.length)
              productCard(item: productItems[firstIndex],),
              Spacer(),
              if (secondIndex < productItems.length)
              productCard(item: productItems[secondIndex],),            ],
          );
        },
      ),
    );
  }
}

// Widget buildItem(productItem items){
//   bool isLiked = false;

//   return Container(
//     padding: EdgeInsets.all(0),
//     height: 350,
//     width: 155,
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Stack(
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(16),
//               child: Image.asset(items.image, width: 155, height: 215,),
//             ),
//             GestureDetector(
//               onTap: () {
//                 isLiked = !isLiked;
//               },
//               child: Container(
//                 width: 32,
//                 height: 32,
//                 decoration: BoxDecoration(
//                   color: color.black,
//                   shape: BoxShape.circle,
//                   border: Border.all(color: Colors.black),
//                 ),
//                 child: Center(
//                   child: Icon(
//                     Icons.favorite,
//                     color: isLiked ? color.black : color.white,
//                     size: 18,
//                   ),
//                 ),
//               ),
//             ),
//           ]
//         ),
//         SizedBox(height: 10,),
//         Text(items.name, style: GoogleFonts.encodeSans(color: color.black, fontSize: 14, fontWeight: FontWeight.bold)),
//         SizedBox(height: 5,),
//         Text(items.type, style: GoogleFonts.encodeSans(color: color.grey, fontSize: 10)),
//         SizedBox(height: 5,),
//         Row(
//           children: [
//             Text(items.price, style: GoogleFonts.encodeSans(color: color.black, fontSize: 14, fontWeight: FontWeight.bold)),
//             Spacer(),
//             Icon(Icons.star, color: Colors.yellow,),
//             Text(items.rating, style: GoogleFonts.encodeSans(color: color.black, fontSize: 14)),
//           ],
//         )
//       ],
//     ),
//   );
// }