import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicity_app/src/constans/app_color.dart';

import '../../../../../../constans/app_strings.dart';
import 'my_blood.dart';

class BloodPage extends StatefulWidget {
  const BloodPage({Key? key, required this.pageController}) : super(key: key);

      final PageController pageController;

  @override
  State<BloodPage> createState() => _BloodPageState();
}

class _BloodPageState extends State<BloodPage> {

  int selectedIndex = 0;
  List<String> bloods = ['O-', 'A-', 'B-', 'AB-', 'O+', 'A+', 'B+', 'AB+'];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: backgrColorBloodPage,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: screenHeight / 9, right: screenWidth / 5),
              child: Text(
                blood,
                style: GoogleFonts.rubik(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: colorWhite,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight / 13,
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
                                selectedIndex = index; // Оновлення selectedIndex при зміні вибору
                              });
                            },
                            childDelegate: ListWheelChildBuilderDelegate(
                              childCount: bloods.length,
                              builder: (context, index) {
                                return MyBloodGroup(
                                  bloodGroup: bloods[index],
                                  selectedBloodGroup: bloods[selectedIndex],
                                  bloods: bloods,
                                );
                              },
                            ),
                          ),
                        ),
                      
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: screenHeight / 6),
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
                height: screenHeight / 16,
                child: ElevatedButton(
                  onPressed: () {
                     widget.pageController.jumpToPage(3);
                  },
                  style: ElevatedButton.styleFrom(
                    shadowColor: Color.fromARGB(255, 228,221,234),
                    backgroundColor: colorWhite,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), 
                    ),
                  ),
                  child: Text(
                    next,
                    style: GoogleFonts.rubik(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: backgrColorBloodPage,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight / 80),
            Center(
              child: SizedBox(
                width: screenWidth * 0.9,
                height: screenHeight / 16,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    skip,
                    style: GoogleFonts.rubik(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: colorWhite,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
