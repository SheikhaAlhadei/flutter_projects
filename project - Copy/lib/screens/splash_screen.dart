import 'package:flutter/material.dart';
import 'package:project/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 7)).then((value) {

Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeScreen(),)
);
      
    });
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
         (Image.asset("assete/logg.png" , width: 300,)),
         Text("My App ", style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),)
  
  
  
  
     ],
  
  
  
    ),
  ),









      ),


   





    




    )
    ,);
  }
}