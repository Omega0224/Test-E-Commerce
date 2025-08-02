import 'package:e_commerce/Data/product.dart';
import 'package:e_commerce/material/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class productCard extends StatefulWidget {
  final productItem item;

  const productCard({Key? key, required this.item}) : super(key: key);

  @override
  State<productCard> createState() => _productCardState();
}

class _productCardState extends State<productCard> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16), // jarak antar baris
      height: 350,
      width: 155,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(widget.item.image, width: 155, height: 215, fit: BoxFit.cover),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isLiked = !isLiked;
                    });
                  },
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: color.black,
                      shape: BoxShape.circle,
                      border: Border.all(color: color.black),
                    ),
                    child: Icon(
                      isLiked? Icons.favorite : Icons.favorite_border_outlined,
                      size: 18,
                      color: color.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(widget.item.name,
              style: GoogleFonts.encodeSans(
                  color: color.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Text(widget.item.type,
              style: GoogleFonts.encodeSans(
                  color: color.grey, fontSize: 10)),
          SizedBox(height: 5),
          Row(
            children: [
              Text(widget.item.price,
                  style: GoogleFonts.encodeSans(
                      color: color.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold)),
              Spacer(),
              Icon(Icons.star, color: Colors.yellow),
              Text(widget.item.rating,
                  style: GoogleFonts.encodeSans(
                      color: color.black, fontSize: 14)),
            ],
          )
        ],
      ),
    );
  }
}