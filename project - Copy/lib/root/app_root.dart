import 'package:flutter/material.dart';
import 'package:project/screens/splash_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   home: SplashScreen(),

   debugShowCheckedModeBanner: false,


    );
  }
}