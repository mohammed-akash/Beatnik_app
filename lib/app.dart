 import 'package:beatnik/features/authentication/screens/OnBoarding/OnBoarding.dart';
import 'package:flutter/material.dart';
 import 'package:get/get.dart';
import 'package:beatnik/utils/theme/theme.dart';
 class App extends StatelessWidget {
   const App({super.key});

   // This widget is the root of your application.
   @override
   Widget build(BuildContext context) {
     return GetMaterialApp(
       debugShowCheckedModeBanner: false,
       themeMode: ThemeMode.system,
       theme: BeatnikTheme.lightTheme,
       darkTheme: BeatnikTheme.darkTheme,
       home: const OnBoardingScreen(),
     );
   }
 }