import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


   appBar: AppBar(

    title: Text("Home screen"),

   ),

    body: Center(
     
     child:ElevatedButton(onPressed: () {

      Navigator.pop(context);
       
     },child: const Text("Back"),),





    ) ,








    );
  }
}