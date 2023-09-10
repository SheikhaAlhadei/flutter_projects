

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
debugShowCheckedModeBanner: false ,


    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: Drawer(backgroundColor:Colors.amberAccent, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      width: 100,
      child: Center(
        child: CircleAvatar(radius: 50,),
      ), 

      
      
      ),


      endDrawer: Drawer(),
      appBar: AppBar(
// actions: [
//   Icon(Icons.search),
//   Icon(Icons.shopping_cart),
//   Icon(Icons.settings),
// ],

centerTitle: true ,
title: Text("Iamge App"),
       
   backgroundColor: Colors.amber,


  //  leading: Icon(
  //   Icons.arrow_back_ios_new,
  //   color: Colors.black38,
  //   size: 10 ,),

   ),

  body:Center(child:Container(alignment:Alignment.center ,
  
  width: 300,
  height: 350,

  child: Text(
    
    
    "Hi iamge " ,
    
    style: TextStyle(fontSize: 30 , color: Colors.white , fontWeight: FontWeight.normal 
    ),
    
    ),

  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),image: DecorationImage(image: AssetImage("assete/oig.jpg"))),
 

  
  
  )
    
  ),







  // body: Image.network("https://th.bing.com/th/id/OIG.lVXjWwlHyIo4QdjnC1YE"),







);
  }
}



