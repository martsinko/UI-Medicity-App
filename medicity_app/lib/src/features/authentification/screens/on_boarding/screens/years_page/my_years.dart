import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicity_app/src/constans/app_color.dart';

class MyYears extends StatelessWidget {
  final String year;
  final String selectedYear;
  final List<String> years;

  MyYears({
    Key? key,
    required this.year,
    required this.selectedYear,
    required this.years,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = year == selectedYear;
    int index = years.indexOf(year);
    int diff = (years.indexOf(selectedYear) - index).abs();
    int fontSize = isSelected ? 44 : 42 - (diff * 10);
    fontSize = fontSize < 20 ? 20 : fontSize;
    // Ensure font size is non-negative

    Color textColor = isSelected ? backgrColorYearsPage : Colors.black; // Custom colors for selected and unselected items
    if (!isSelected) {
      int colorValue = 255 - (diff * 28);
      textColor = Color.fromRGBO(colorValue, colorValue, colorValue, 0.8);
    }

    return Center(
      child: Text(
        year,
        style: GoogleFonts.rubik(
          fontSize: fontSize.toDouble(),
          fontWeight: FontWeight.w700,
          color: textColor,
        ),
      ),
    );
  }
}
