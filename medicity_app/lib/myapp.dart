import 'package:flutter/material.dart';
import 'package:medicity_app/src/features/authentification/screens/enter_name_page/enter_name_page.dart';
import 'package:medicity_app/src/features/authentification/screens/loading_page/loading_page.dart';
import 'package:medicity_app/src/features/authentification/screens/on_boarding/screens/height_page/height_page.dart';
import 'package:medicity_app/src/features/authentification/screens/on_boarding/screens/on_boarding_page.dart';
import 'package:medicity_app/src/features/authentification/screens/on_boarding/screens/years_page/years_page.dart';
import 'package:medicity_app/src/features/authentification/screens/pin_code_page/pin_code_page.dart';
import 'package:medicity_app/src/features/authentification/screens/sign_up_page/sign_up_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        
      ),
      home: OnBoardingPage(),
    );
  }
}
