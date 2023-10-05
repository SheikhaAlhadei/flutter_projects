import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Slider(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Slider extends StatefulWidget {
  const Slider({super.key});

  @override
  State<Slider> createState() => _SliderState();
}

class _SliderState extends State<Slider> {


  List<String> images = [
   "https://img.freepik.com/free-vector/hacker-operating-laptop-cartoon-icon-illustration-technology-icon-concept-isolated-flat-cartoon-style_138676-2387.jpg?w=360" , 
   "https://techstory.in/wp-content/uploads/2021/11/unnamed-99.jpg",
   "https://cloudfront-us-east-2.images.arcpublishing.com/reuters/F6INOOMSRRL5XOOQDRPZUWPWBA.jpg" , 
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(


    body: CarouselSlider( options: CarouselOptions(
     height: 100.0, 
     autoPlay: true , 
     enlargeCenterPage: true , 
     viewportFraction: 0.8 ,
     autoPlayAnimationDuration: Duration(microseconds: 400),


    ),items:images.map((e) => Image.network(e),
    ).toList(),
    ),

   








    ),);
  }
}