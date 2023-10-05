import 'package:flutter/material.dart';
import 'package:flutter_application_20/screens/pdf_screen.dart';
import 'package:flutter_application_20/screens/time_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

     home: PickerScreen() ,
     debugShowCheckedModeBanner: false,


    );
  }
}