import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicity_app/src/constans/app_strings.dart';

import '../../../constans/app_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
      double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(left: screenWidth / 24),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: screenHeight / 24),
                child: Row(
                  children: [
                      CircleAvatar(
                        minRadius: 23,
                      ),
                        SizedBox(
                          width: screenWidth / 30,
                        ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          SizedBox(
                            height: 25,
                            child: Text('Alexey',style: GoogleFonts.rubik(fontSize: 20, fontWeight: FontWeight.w900 ,color: Color.fromARGB(255, 40, 22, 53)))), 
                            Text('29 лет', style: GoogleFonts.rubik(fontSize: 15, fontWeight: FontWeight.w900 ,color: Color.fromARGB(255, 174, 126, 209))),
                        ],
                      ),
                      SizedBox(width: screenWidth * 0.435),
                       IconButton(onPressed: (){}, icon: Image.asset('assets/logo/alarm.png', scale: 0.8,))
                  ]
                ),
              ),
                  SizedBox(height: screenHeight / 40,),
                  Row(
                    children: [
                      Image.asset('assets/logo/calendar.png', scale: 0.75,),
                      SizedBox(width: screenWidth / 40),
                      Text(plan, style: GoogleFonts.rubik(fontSize: 23, fontWeight: FontWeight.w900, color: Color.fromARGB(255, 51, 42, 58,)),)
                    ],
                  ),
                  SizedBox(height: screenHeight / 60,),
                  Padding(
                    padding: EdgeInsets.only(right: screenWidth / 24),
                    child: Container(
                      decoration: BoxDecoration(
                        color: backgrColorHeightPage,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(255, 25, 156, 233),
                                           offset: Offset(0, 6),
                                          blurRadius: 1
                                      )
                                    ]
                      ),                  
                      height: screenHeight * 0.24,
                      width: 1000,
                      child:  Stack(
                        children: [
                          Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                
                                padding: EdgeInsets.only(left: screenWidth / 28, top: screenHeight / 45, right: screenWidth / 10),
                                child: Column(
                                  children: [
                                       Padding(
                                         padding: EdgeInsets.only(right: screenWidth / 25),
                                         child: Text(dontPlan, style: GoogleFonts.rubik(fontSize: 24, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 16, 61, 82)),),
                                       ), 
                              Padding(
                                padding: EdgeInsets.only(right: screenWidth / 25),
                                child: Text(deckPlan, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, wordSpacing: -2, color: Color.fromARGB(255, 16, 61, 82)),),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: screenWidth * 0.13, top: screenHeight / 40),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8) ,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(255, 212,218,222),
                                           offset: Offset(0, 5),
                                          blurRadius: 1
                                      )
                                    ]
                                  ),
                                  height: screenHeight / 17 ,
                                  width: screenWidth / 2.2,
                                  child: ElevatedButton(
                                    onPressed: (){}, 
                                    child: Text('Посмотреть', style: GoogleFonts.rubikMonoOne(fontSize: 16, fontWeight: FontWeight.w900, color: Color.fromARGB(255, 46, 150, 200))),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)
                                      )
                                    ),
                                    
                                      ),
                                ),
                              )
                                  ],
                                ) ,
                              ),
                             
                            ],
                          ),
                          Positioned(
                           // right: screenWidth / 55,
                            top: screenHeight / 16,
                            left: screenWidth * 0.58,
                            child: Image.asset('assets/images/medical.png', scale: 0.89,))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight / 22,),
                  Row(
                    
                    children: [
                      Image.asset('assets/logo/doctor.png'),
                      SizedBox(width: screenWidth / 40,),
                      Text(selectDoc, style: GoogleFonts.rubik(fontSize: 22, fontWeight: FontWeight.w900, color: Color.fromARGB(255, 51, 42, 58,)),),
                      SizedBox(width: screenWidth / 5.3),                    
                       SizedBox(
                          width: screenWidth /4.3,
                          child: TextButton(onPressed: (){}, child: Text('Больше', style: GoogleFonts.rubik(fontSize: 18, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 241, 149, 32)),))),
                      
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Row(
                      children: [
                       /* Container(
                          height: screenHeight / 10 , 
                          width: screenWidth / 20 ,
                          child: Image.asset('assets/images/stethoscope.png'),
                        ),*/
                       /* Container(
                          child: Image.asset('')
                        ),*/
                        /*Container(
                          child: Image.asset('assets/images/stethoscope.png') 
                        ),*/
                        Container(
                          height: screenHeight / 5.5,
                          width: screenWidth / 3.5,
                          child: ElevatedButton(
                            onPressed: (){}, 
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              )
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: screenHeight / 30,
                                ),
                                
                                 SizedBox(
                                  height: screenHeight / 50,
                                ),
                                Image.asset('assets/images/stethoscope.png', scale: 0.8,),
                                Text('Терапевт')
                              ],
                            ))
                        ),
                        Container(
                          width: screenWidth * 0.3,
                          height: screenHeight / 5.5,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              )
                            ),
                            onPressed: (){},
                            child: Column(
                              children: [
                                SizedBox(
                                  height: screenHeight / 40,),
                                Image.asset('assets/images/stethoscope.png', scale: 0.8,),
                                SizedBox(
                                  height: screenHeight / 30,),
                                Text('Терапевт')
                              ],
                            )
                          ),
                        )
                      ],
                    ),
                  )
            ],
          ),
        ) 
      ),
    );
  }
}
