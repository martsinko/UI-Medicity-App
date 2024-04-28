import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicity_app/src/constans/app_color.dart';

class MyWeight extends StatelessWidget {
  final String weightValue;
  final String selectedWeight;
  final List<String> weights;

  MyWeight({
    Key? key,
    required this.weightValue,
    required this.selectedWeight,
    required this.weights,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = weightValue == selectedWeight;
    int index = weights.indexOf(weightValue);
    int diff = (weights.indexOf(selectedWeight) - index).abs();
    int fontSize = isSelected ? 44 : 42 - (diff * 10);
    fontSize = fontSize < 20 ? 20 : fontSize;
    // Ensure font size is non-negative

    Color textColor = isSelected ? backgrColorWeightPage : Colors.black; // Custom colors for selected and unselected items
    if (!isSelected) {
      int colorValue = 255 - (diff * 28);
      textColor = Color.fromRGBO(colorValue, colorValue, colorValue, 0.8);
    }

    return Center(
      child: Text(
        weightValue,
        style: GoogleFonts.rubik(
          fontSize: fontSize.toDouble(),
          fontWeight: FontWeight.w700,
          color: textColor,
        ),
      ),
    );
  }
}
