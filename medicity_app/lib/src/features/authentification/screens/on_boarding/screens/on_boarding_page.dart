import 'package:flutter/material.dart';
import 'package:medicity_app/src/constans/app_color.dart';
import 'package:medicity_app/src/features/authentification/screens/on_boarding/screens/blood_page/blood_page.dart';
import 'package:medicity_app/src/features/authentification/screens/on_boarding/screens/height_page/height_page.dart';
import 'package:medicity_app/src/features/authentification/screens/on_boarding/screens/weight_page/weight_page.dart';
import 'package:medicity_app/src/features/authentification/screens/on_boarding/screens/years_page/years_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  PageController pageController = PageController();
  List<Color> dotColors = [
    Color.fromARGB(255, 123, 212, 254),
    Color.fromARGB(255, 255, 200, 78),
    Color.fromARGB(255, 229, 115, 148),
    colorWhite,
  ];

 bool heightPagePassed = true;
  bool weightPagePassed = true;
   bool bloodPagePassed = true;
  bool yearsPagePassed = true;

 int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
             // physics: NeverScrollableScrollPhysics(),
              controller: pageController,
              children:  [
               HeightPage(pageController: pageController),
                WeightPage(pageController: pageController,),
                 BloodPage(pageController: pageController,),
                const YearsPage(),
              ],
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;             
                });
              },
            ),
            Container(
              alignment: const Alignment(0, -0.85),
              child: SmoothPageIndicator(
                controller: pageController,
                count: 4,
                effect: WormEffect(
                  activeDotColor: colorWhite,
                  dotColor: (currentIndex == 1) ? colorWhite : dotColors[currentIndex],//dotColors[currentIndex],
                  dotHeight: 4,
                  dotWidth: 90,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
