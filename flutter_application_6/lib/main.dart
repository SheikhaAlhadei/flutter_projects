

import 'package:flutter/material.dart';

void main(){

runApp(Tast());




}

class Tast extends StatelessWidget {
  const Tast({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PhoneScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}




class PhoneScreen extends StatelessWidget {
  const PhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


     body:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("1-Iphone 11 pro max"),
                    Text("For 400 OR")
                  ],
                ),
              ),



Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("2-Iphone X"),
                    Text("For 100 OR")
                  ],
                ),
              ),





Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("3-Iphone 12 pro max"),
                    Text("For 500 OR")
                  ],
                ),
              ),




Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Text("4-Iphone 13"),
                    Text("For 550 OR")
                  ],
                ),
              ),


            ], 



















    ),);
  }
}