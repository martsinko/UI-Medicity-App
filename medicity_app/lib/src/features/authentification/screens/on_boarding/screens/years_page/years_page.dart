import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicity_app/src/constans/app_color.dart';
import 'package:medicity_app/src/constans/app_strings.dart';
import 'package:medicity_app/src/features/authentification/screens/on_boarding/screens/height_page/height_cm.dart';

import 'my_years.dart';

class YearsPage extends StatefulWidget {
  const YearsPage({super.key});

  @override
  State<YearsPage> createState() => _YearsPageState();
}

class _YearsPageState extends State<YearsPage> {
  
  int selectedIndex = 0;
  List<int> years = List.generate(130 - 7 + 1, (index) => 7 + index);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return  Scaffold(
      backgroundColor: backgrColorYearsPage,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
                Padding(
                  padding:  EdgeInsets.only(top: screenHeight / 9, right: screenWidth / 5),
                  child: Text(myyears, style: GoogleFonts.rubik(fontSize: 30, fontWeight: FontWeight.w900, color: colorWhite),),
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
                              childCount: years.length,
                                builder: (context, index) {
                                  List<String> stringYears = years.map((value) => value.toString()).toList();
                                return MyYears(
                                  year: years[index].toString(), 
                                selectedYear: years[selectedIndex].toString(), 
                                years: stringYears
                                );
                                }
                            )),
                          ),
                        
                      ),
                    ],
                  ),
                  
                ],
              ),  
            SizedBox( height:  screenHeight / 4.3),
              Center(
                 child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 228,221,234),
                        offset: Offset(0.0, 4.5),
                        blurRadius: 1,

                      )
                    ]
                  ),
                    width: screenWidth * 0.9,
                    height: screenHeight / 16  ,
                    child: ElevatedButton(
                      
                      onPressed: (){}, 
                      style: ElevatedButton.styleFrom(
                        elevation: 1, 
                        shadowColor: Color.fromARGB(255, 228,221,234),
                        backgroundColor: colorWhite,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                      child: Text(finish, style: GoogleFonts.rubik(fontSize: 17, fontWeight: FontWeight.w800, color: backgrColorYearsPage,),),
                      ),
                  ),
               ),                               
          ], 
        )
      ),
    );
  }
}