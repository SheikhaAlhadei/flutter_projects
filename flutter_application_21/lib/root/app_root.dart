import 'package:flutter/material.dart';
import 'package:flutter_application_21/screens/login.dart';
import 'package:flutter_application_21/screens/sigin.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      home:SiginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}