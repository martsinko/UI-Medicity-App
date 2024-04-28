import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicity_app/src/constans/app_color.dart';
import 'package:medicity_app/src/constans/app_strings.dart';
import 'package:medicity_app/src/features/authentification/screens/on_boarding/screens/height_page/height_cm.dart';

class HeightPage extends StatefulWidget {
  const HeightPage({super.key});

  @override
  State<HeightPage> createState() => _HeightPageState();
}

class _HeightPageState extends State<HeightPage> {
  
  int selectedIndex = 0;
  List<int> values = List.generate(230 - 100 + 1, (index) => 100 + index);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return  Scaffold(
      backgroundColor: backgrColorHeightPage,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
                Padding(
                  padding:  EdgeInsets.only(top: screenHeight / 9, right: 100),
                  child: Text(height, style: GoogleFonts.rubik(fontSize: 30, fontWeight: FontWeight.w900, color: colorWhite),),
                ), 
                SizedBox(
                  height:  screenHeight / 8,
                ),
              Stack(
                children: [
                  Positioned(
                    left: screenWidth / 30,
                    top: screenHeight / 7.9, 
                    right: screenWidth / 30,  
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12), 
                        color: colorWhite,
                      ),
                      
                      height: 80,
                      width: 400,
                    ),
                  ),
                  Row(
                    children: [
                      
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: screenWidth / 3),
                          child: SizedBox(
                            height: 300,
                            child: ListWheelScrollView.useDelegate(            
                              physics: const FixedExtentScrollPhysics(),
                               diameterRatio: 18,               
                              itemExtent: 70, 
                               perspective: 0.009,
                               onSelectedItemChanged: (index) {
                              setState(() {
                               selectedIndex = index; 
                              });
                            },
                            childDelegate: ListWheelChildBuilderDelegate(
                              childCount: values.length,
                                builder: (context, index) {
                                  List<String> stringValues = values.map((value) => value.toString()).toList();
                                return MyHeight(
                                  value: values[index].toString(), 
                                selectedValue: values[selectedIndex].toString(), 
                                values: stringValues
                                );
                                }
                            )),
                          ),
                        ),
                      ),
                        Padding(
                          padding: EdgeInsets.only( right: screenWidth / 3.5, top: screenHeight / 280 ),
                          child: Container(
                          child: Center(
                          child: Text(sm, style: GoogleFonts.rubik(fontSize: 24, fontWeight: FontWeight.w700, color: backgrColorHeightPage),),
                             ),
                           ),
                        )  
                    ],
                  ),
                  
                ],
              ),  
            SizedBox( height:  screenHeight / 6),
              Center(
                 child: SizedBox(
                    width: screenWidth * 0.9,
                    height: screenHeight / 16  ,
                    child: ElevatedButton(
                      
                      onPressed: (){}, 
                      style: ElevatedButton.styleFrom(
                        elevation: 8, 
                        shadowColor: Colors.white,
                        backgroundColor: colorWhite,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                      child: Text(next, style: GoogleFonts.rubik(fontSize: 16, fontWeight: FontWeight.w800, color: backgrColorHeightPage,),),
                      ),
                  ),
               ),          
               SizedBox( height:  screenHeight / 80),
              Center(
                 child: SizedBox(
                    width: screenWidth * 0.9,
                    height: screenHeight / 16  ,
                    child: TextButton(
                      
                      onPressed: (){}, 
                      style: TextButton.styleFrom(
                      
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                      child: Text(skip, style: GoogleFonts.rubik(fontSize: 16, fontWeight: FontWeight.w800, color: colorWhite,),),
                      ),
                  ),
               ),          
          ], 
        )
      ),
    );
  }
}