import 'package:e_commerce/Data/type.dart';
import 'package:e_commerce/material/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class typeList extends StatefulWidget {
  const typeList({super.key});

  @override
  State<typeList> createState() => _typeListState();
}

class _typeListState extends State<typeList> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 34,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: typeItems.length,
            itemBuilder: (context, index){
              final item = typeItems[index];
              final isSelected = selectedIndex == index;
              
              final Widget iconWidget = item.icon != null
                ? Icon(item.icon, size: 16, color: isSelected ? color.white : color.black)
                : item.image != null
                    ? Image.asset(item.image!, width: 16, height: 16, color: isSelected ? color.white : color.black)
                    : SizedBox.shrink();

              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 6,),
                child: AnimatedContainer(
                  duration: Duration(microseconds: 200),
                  height: 34,
                  child: ElevatedButton.icon(
                    onPressed: (){
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    icon: iconWidget,
                    label: Text(item.name, maxLines: 1, style: GoogleFonts.encodeSans(color: isSelected? color.white : color.black, fontSize: 12),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isSelected? color.black : color.white,
                      side: BorderSide(color: color.grey),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      minimumSize: Size(0, 34)
                    ),
                  ),
                ),
              );
            },
        ),
    );
  }
}