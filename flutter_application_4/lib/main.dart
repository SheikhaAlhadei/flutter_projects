import 'package:flutter/material.dart';

void main() {

return(runApp(FirstApp()));

  
}

class FirstApp extends StatelessWidget {
  const FirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Rows(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class Rows extends StatelessWidget {
  const Rows({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
















     body:  Row(
        
     children: [
      Center(child:Container(alignment:Alignment.center ,width: 400 , height: 200 ,child: Text("Iamge 1" ,  style: TextStyle(fontSize: 30 , color: Colors.white , fontWeight:FontWeight.normal , ),),
      
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assete/imag.jpg")   )),),),

      
  

        Text("First App"), 


       


     Center(child: Container( alignment: Alignment.center ,        width: 400, height: 200,child: Text("Iamge 2" ,  style: TextStyle(fontSize: 30 , color: Colors.white , fontWeight:FontWeight.normal , ),),
      
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assete/imag.jpg")   )),),),
     


     ],

    mainAxisAlignment: MainAxisAlignment.spaceBetween,

     ),







    );
  }
}