
import 'package:flutter/material.dart';
import 'package:flutter_application_22/Screens/home_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(


    home: HomeScreen() ,
    debugShowCheckedModeBanner: false,

    );
  }
}