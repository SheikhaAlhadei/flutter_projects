import 'package:flutter/material.dart';

void main() {
runApp(MyApp());
}
 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
actions: [
  Icon(Icons.search),
  Icon(Icons.shopping_cart),
  Icon(Icons.settings),
],

centerTitle: true ,
title: Text("Frist App"),
       
   backgroundColor: Colors.amber,


   leading: Icon(
    Icons.arrow_back_ios_new,
    color: Colors.black38,
    size: 10 ,),

   ),


body:  Container(
  margin: EdgeInsets.all(20),

    child: Text(
    "Eng.sheikha",
    style: TextStyle(
    fontFamily: "way",
     color: Colors.black12,
     fontSize: 40,
     wordSpacing: 20 , 
     letterSpacing: 5 , 
     fontWeight: FontWeight.bold , 
    
    ),),
  ),);
  }
}