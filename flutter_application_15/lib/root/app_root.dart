
import 'package:flutter/material.dart';
import 'package:flutter_application_15/Screens/HomeScreen.dart';

class MyAppRoot extends StatefulWidget {
  const MyAppRoot({super.key});

  @override
  State<MyAppRoot> createState() => _MyAppRootState();
}

class _MyAppRootState extends State<MyAppRoot> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

     home: MyHomeScreen(),


    );
  }
}