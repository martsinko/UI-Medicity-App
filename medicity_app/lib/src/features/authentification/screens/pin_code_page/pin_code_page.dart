import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicity_app/src/constans/app_strings.dart';

import '../../../../constans/app_color.dart';

class PinCodePage extends StatefulWidget {
  const PinCodePage({super.key});

  @override
  State<PinCodePage> createState() => _PinCodePageState();
}

class _PinCodePageState extends State<PinCodePage> {

 late String enteredPin = '';
  bool isPinVisible = false;
  bool isPressed = false; 

  void _updateEnteredPin() {
  setState(() {}); 
}

Widget numButton(int number) {
  return StatefulBuilder(
    builder: (BuildContext context, StateSetter setState) {
      Color previousColor = colorWhite; 
      return GestureDetector(
        onTapDown: (TapDownDetails details) {
          setState(() {
            isPressed = true; 
            previousColor = isPressed ? colorWhite : backgrColorNumButt;
    
          });
        },
        onTapUp: (TapUpDetails details) {
          setState(() {
            isPressed = false; 
            if (enteredPin.length < 4 ) {
              enteredPin += number.toString();
            } 
             _updateEnteredPin();
          });
        },
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: isPressed ? previousColor : backgrColorNumButt,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Center(
            child: Text(
              number.toString(),
              style: GoogleFonts.rubik(
                fontSize: 40,
                color: isPressed ? backgroundColor : colorWhite,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      );
    },
  );
}



  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [ 
            SizedBox(height: screenHeight / 18),
              Center(
                child: Container(
                      height: screenHeight / 5,
                  child: Stack(
                          children: [
                              Image.asset('assets/images/sova2.png'),
                              Positioned(
                                top:  screenHeight / 5.5,
                                left: screenWidth / 18,
                                child: Image.asset('assets/images/forsova2.png')),                              
                          ] ,
                  ),
                ),
              ),
              Text(enterCode, style: GoogleFonts.rubik(fontSize: 21, fontWeight: FontWeight.w800, color: colorWhite),),
              SizedBox(height: screenHeight / 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4, (index) {
                  bool isFilled = index < enteredPin.length;
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 7),
                    height: isPinVisible ? 70 : 20,
                    width: isPinVisible ? 70 : 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: isFilled ? colorWhite : Colors.transparent,
                      border: Border.all(
                        color: isFilled ? Colors.transparent : colorWhite,
                        width: 1,
                      ),
                    ),
                  );
                }),
              ),
                                  SizedBox(height: screenHeight / 15),
                            for (var i = 0; i < 3; i++)
                              
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(3, (index) => numButton(1 + 3 * i + index))
                                    .map((widget) => Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
                                          child: SizedBox.fromSize(
                                            size: const Size(75, 75),
                                            child: widget,
                                          ),
                                        ))
                                    .toList(),
                              ),
                            ),
                            SizedBox(
                                height: screenHeight / 60,
                            ),
                                Padding(
                                  padding: EdgeInsets.only(left: screenWidth / 13, right: 25),
                                  child: Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                     children: [
                                    IconButton(onPressed: (){}, icon: Image.asset('assets/logo/face.png', scale: 0.9,)),
                                    SizedBox(
                                      height: screenHeight / 11,
                                      width: screenWidth / 5.3,
                                      child: numButton(0)),
                                     TextButton(
                                        onPressed: () {
                                          setState(() {
                                            if (enteredPin.isNotEmpty) {
                                              enteredPin = enteredPin.substring(0, enteredPin.length - 1);
                                            }
                                          });
                                        },
                                        child: Image.asset('assets/logo/backspace.png', scale: 0.9,),
                                      ),
                                       ],
                                   ),
                                ),
                               
                          
          ],
        )),
    );
  }
}