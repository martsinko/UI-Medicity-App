import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicity_app/src/constans/app_color.dart';

class MyBloodGroup extends StatelessWidget {
  final String bloodGroup;
  final String selectedBloodGroup;
  final List<String> bloods;

  MyBloodGroup({
    Key? key,
    required this.bloodGroup,
    required this.selectedBloodGroup,
    required this.bloods,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = bloodGroup == selectedBloodGroup;
    int index = bloods.indexOf(bloodGroup);
    int diff = (bloods.indexOf(selectedBloodGroup) - index).abs();
    int fontSize = isSelected ? 44 : 42 - (diff * 10);
    fontSize = fontSize < 20 ? 20 : fontSize;
    // Ensure font size is non-negative

    Color textColor = isSelected ? backgrColorBloodPage : Colors.blue; // Custom colors for selected and unselected items
    if (!isSelected) {
      int colorValue = 255 - (diff * 30);
      textColor = Color.fromRGBO(colorValue, colorValue, colorValue, 0.8);
    }

    return Center(
      child: Text(
        bloodGroup,
        style: GoogleFonts.rubik(
          fontSize: fontSize.toDouble(),
          fontWeight: FontWeight.w700,
          color: textColor,
        ),
      ),
    );
  }
}
