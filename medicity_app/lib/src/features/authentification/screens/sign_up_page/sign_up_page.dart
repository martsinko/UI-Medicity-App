import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicity_app/src/constans/app_color.dart';
import 'package:medicity_app/src/constans/app_strings.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
             SizedBox(
              height: screenHeight / 5,
             ),
            Center(
              child: Container(
                width: screenWidth * 1,
                height: screenHeight * 0.23,
                color: backgroundColor,
                child: Stack(
                  children: [
                     Positioned(
                      top: screenHeight / 14,
                      left: screenWidth / 20,
                      width: screenWidth / 3.2,
                      child: Image.asset('assets/images/closet.png')),

                     Positioned(
                      top: screenHeight / 12  ,
                      right: screenWidth / 50,
                      child: Image.asset('assets/images/desk.png')),
                     
                          Positioned(
                           left: screenWidth / 4,
                           width:  screenWidth / 2,
                           top: screenHeight / 200 ,
                            child: Image.asset('assets/images/Group.png')),

                    Positioned(
                      width: screenWidth * 1.1,
                      height: screenHeight * 0.45,
                      child: Image.asset('assets/images/Rectangle.png')),
                     Positioned(
                      width: screenWidth / 1.1,
                      height: screenHeight * 0.45,
                      child: Image.asset('assets/images/Rectangle.png')),
                ],
                ),
              ),
            ),
                SizedBox(
                  height: screenHeight / 20 ,
                ),
                Text(welcome, style: GoogleFonts.rubik(color: colorWhite, fontSize: 34, fontWeight: FontWeight.w900),),

                Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child: SizedBox(
                    width: screenWidth * 0.88,
                    child: Text(description, style: GoogleFonts.rubik(color: colorWhite, fontSize: 13, fontWeight: FontWeight.w400,),)),
                ),

                SizedBox(
                  height: screenHeight / 20,
                ),

                SizedBox(
                  width: screenWidth * 0.9,
                  height: screenHeight / 16  ,
                  child: ElevatedButton(
                    onPressed: (){}, 
                    style: ElevatedButton.styleFrom(
                      elevation: 5, 
                      shadowColor: appleShadowColor,
                      backgroundColor: appleButColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/logo/apple.png', scale: 1,),
                         SizedBox(width: screenWidth / 60,),
                        Text(signInApple, style: GoogleFonts.rubik(fontSize: 16, fontWeight: FontWeight.w800, color: colorWhite,),),
                      ],
                    ),),
                ),
                  SizedBox(
                  height: screenHeight / 80,
                ),
                   SizedBox(
                  width: screenWidth * 0.9,
                  height: screenHeight / 16  ,
                  child: ElevatedButton(
                    onPressed: (){}, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: facebookButColor,
                      elevation: 5,
                      shadowColor: facebookShadowColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/logo/facebook.png', scale: 1,),
                         SizedBox(width: screenWidth / 60,),
                        Text(signInFacebook, style: GoogleFonts.rubik(fontSize: 16, fontWeight: FontWeight.w800, color: colorWhite,),),
                      ],
                    ),),
                ),

                      SizedBox(
                  height: screenHeight / 80,
                ),

                 SizedBox(
                  width: screenWidth * 0.9,
                  height: screenHeight / 16  ,
                  child: ElevatedButton(
                    onPressed: (){}, 
                    style: ElevatedButton.styleFrom(
                      elevation: 5, 
                      shadowColor: googleShadowColor,
                      backgroundColor: googleButColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/logo/google.png', scale: 1,),
                        SizedBox(width: screenWidth / 50,),
                        Text(signInGoogle, style: GoogleFonts.rubik(fontSize: 16, fontWeight: FontWeight.w600, color: colorWhite,),),
                      ],
                    ),),
                ),
                SizedBox(height: screenHeight / 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(haventAcc , style: GoogleFonts.rubik(fontSize: 16, fontWeight: FontWeight.w600)),
                    TextButton(onPressed: (){}, child: Text(signUp, style: GoogleFonts.rubik(fontSize: 16, fontWeight: FontWeight.w600, color: colorWhite)))
                  ],
                )
          ],
        ) ),
    );
  }
}