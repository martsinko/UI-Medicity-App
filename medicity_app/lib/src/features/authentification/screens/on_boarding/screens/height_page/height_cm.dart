import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicity_app/src/constans/app_color.dart';

class MyHeight extends StatelessWidget {
  final String value;
  final String selectedValue;
  final List<String> values;

  MyHeight({
    Key? key,
    required this.value,
    required this.selectedValue,
    required this.values,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = value == selectedValue;
    int index = values.indexOf(value);
    int diff = (values.indexOf(selectedValue) - index).abs();
    int fontSize = isSelected ? 30 : 54 - (diff * 20);
    fontSize = fontSize < 34 ? 30 : fontSize;
    // Ensure font size is non-negative

    Color textColor = isSelected ? backgrColorHeightPage : Colors.grey; // Custom colors for selected and unselected items
    if (!isSelected) {
      int colorValue = 255 - (diff * 16);
      textColor = Color.fromRGBO(colorValue, colorValue, colorValue, 0.58);
    }

    return Center(
      child: Text(
        value,
        style: GoogleFonts.rubik(
          fontSize: fontSize.toDouble(),
          fontWeight: FontWeight.w700,
          color: textColor,
        ),
      ),
    );
  }
}
