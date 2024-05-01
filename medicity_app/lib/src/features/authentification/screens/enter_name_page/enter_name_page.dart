import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicity_app/src/constans/app_color.dart';
import 'package:medicity_app/src/constans/app_strings.dart';

class EntrerNamePage extends StatelessWidget {
  const EntrerNamePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenHeight / 10,),
              Padding(
                padding: EdgeInsets.only( left: screenWidth / 20),
                child: Text(enterYourName, style: GoogleFonts.rubik(fontSize: 30, fontWeight: FontWeight.w900, color: colorWhite),),
              ),
               SizedBox(
              height: screenHeight / 35,),
              Center(child: Image.asset('assets/images/enternameimg.png'),),

              SizedBox(height: screenHeight / 35,),

              Center(
                child: SizedBox(

                  height: screenHeight / 16, 
                  width: screenWidth * 0.9,
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: colorWhite, width: 1.0),
                    ),
                      focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: colorWhite, width: 1.0),
      ),
                      hintText: enterName,
                      hintStyle: GoogleFonts.rubik(fontSize: 15, color: colorWhite, fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                    ),
                  ),
                ),
              ),

            SizedBox(height: screenHeight / 60),

               Center(
                 child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 228,221,234),
                        offset: Offset(0.0, 3.5),
                        blurRadius: 1,

                      )
                    ]
                  ),
                    width: screenWidth * 0.9,
                    height: screenHeight / 16  ,
                    child: ElevatedButton(             
                      onPressed: (){}, 
                      style: ElevatedButton.styleFrom(
                       // elevation: 1, 
                        //shadowColor: Colors.grey,
                        backgroundColor: colorWhite,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                      child: Text(start, style: GoogleFonts.rubik(fontSize: 16, fontWeight: FontWeight.w800, color: backgroundColor,),),
                      ),
                  ),
               ),
          ],  
        ) ),
    );
  }
}