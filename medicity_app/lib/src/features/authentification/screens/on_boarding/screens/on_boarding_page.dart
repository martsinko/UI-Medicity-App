import 'package:flutter/material.dart';
import 'package:medicity_app/src/constans/app_color.dart';
import 'package:medicity_app/src/features/authentification/screens/on_boarding/screens/blood_page/blood_page.dart';
import 'package:medicity_app/src/features/authentification/screens/on_boarding/screens/height_page/height_page.dart';
import 'package:medicity_app/src/features/authentification/screens/on_boarding/screens/weight_page/weight_page.dart';
import 'package:medicity_app/src/features/authentification/screens/on_boarding/screens/years_page/years_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPage extends StatelessWidget {
   OnBoardingPage({Key? key}) : super(key: key);

  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
                  PageView(
                    controller: _pageController,
                      children:const [
                        HeightPage(),
                        WeightPage(),
                        BloodPage(),
                        YearsPage(),
                      ],
                    ),
                 
                Container(
                  alignment: const Alignment(0, -0.85),
                  child: SmoothPageIndicator(controller: _pageController, 
                  count: 4,
                  effect: const WormEffect(
                    activeDotColor: colorWhite,
                    dotHeight: 4,
                    dotWidth: 90
                  ),
                  ))
             
          ],
        ),
      ),
    );
  }
}
