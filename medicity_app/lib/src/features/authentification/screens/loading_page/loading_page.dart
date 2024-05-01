import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicity_app/src/constans/app_color.dart';
import 'package:medicity_app/src/constans/app_strings.dart';
import 'package:medicity_app/src/features/authentification/screens/on_boarding/screens/height_page/height_page.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage>  with TickerProviderStateMixin {

  late AnimationController controller;

   void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..addListener(() {
        setState(() {});
      });
    controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    /*if (controller.status == AnimationStatus.completed) {
      // Navigate to the NextPage automatically.
      Future.delayed(const Duration(seconds: 1), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HeightPage()),
        );
      });
    }*/

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.4,),
              Center(child: Image.asset('assets/images/sova.png')),

              SizedBox(height: screenHeight / 3.4,),
                Text(data, style: GoogleFonts.rubik(fontSize: 21, fontWeight: FontWeight.w800, color: colorWhite),),
                SizedBox(height: screenHeight / 120,),
              SizedBox(
                width: screenWidth * 0.9,
                child: LinearProgressIndicator(
                  borderRadius: BorderRadius.circular(13),
                  minHeight: screenHeight / 38,
                  value: controller.value,
                 valueColor: AlwaysStoppedAnimation<Color>(backgrColorLoading),
                  backgroundColor: backgrColorLoading,
                ),
              )

          ] ,
        ) ),
    );
  }
}