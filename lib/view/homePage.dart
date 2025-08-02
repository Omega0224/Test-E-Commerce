import 'package:e_commerce/material/color.dart';
import 'package:e_commerce/view/widget/productList.dart';
import 'package:e_commerce/view/widget/typeList.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: color.white,
      body: GestureDetector(
        child: Padding(
          padding: EdgeInsets.fromLTRB(24, 68, 24, 24),
          child:Column(
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Sambutan dan Nama User
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, Welcome 👋',
                        style: GoogleFonts.encodeSans(
                          color: color.grey,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Albert Stevano',
                        style: GoogleFonts.encodeSans(
                          color: color.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ]
                  ),
                  // Foto Profile
                  CircleAvatar(
                    backgroundImage: AssetImage('lib/asset/1406be1bb3e531935af8e5cf6bc014fde3dbc82c.png'),
                    radius: 20,
                  )
                ],
              ),
              SizedBox(height: 15,),
              // Search Box dan Filter Button
              Row(
                children: [
                  // Search Box
                  Expanded(
                    child: SizedBox(
                      height: 48,
                      child: TextField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide(
                                  color: color.lightGrey, width: 2.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                    color: color.lightGrey, width: 2.0)),
                            labelText: 'Search clothes...',
                            labelStyle: TextStyle(color: color.lightGrey),
                            fillColor: Colors.transparent,
                            filled: true,
                            prefixIcon: Icon(
                              Icons.search,
                              color: color.lightGrey,
                            )),
                        style: TextStyle(color: color.lightGrey),
                        textInputAction: TextInputAction.search,
                      ),
                    ),  
                  ),
                  SizedBox(width: 20,),
                  // Filter Button
                  SizedBox(
                    width: 48,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: (){}, 
                      child: Icon(Icons.tune_outlined,color: color.white,),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: color.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)
                        ),
                        padding: EdgeInsets.all(0)
                      ),  
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25,),
              typeList(),
              productList()
            ],
          ) 
        ) 
      ),
    );
  }
}