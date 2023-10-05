import 'package:flutter/material.dart';
import 'package:project/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(





      body: Container(


  decoration: BoxDecoration(

       gradient: LinearGradient(begin:Alignment.topRight   ,end: Alignment.bottomLeft ,colors:[

        const Color.fromARGB(255, 242, 15, 91),
           const Color.fromARGB(255, 238, 63, 121) ,
           const Color.fromARGB(255, 247, 110, 156) 
       ] ),



  ),

  child: Center(
    child: Column(
     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     children: [
         CircularProgressIndicator() , 
         (Image.asset("assete/logg.png")),
         Text("My App ")
  
  
  
  
     ],
  
  
  
    ),
  ),









      ),


   





    




    )
    ,);
  }
}