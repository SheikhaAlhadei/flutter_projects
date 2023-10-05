import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(





      body:GridView.builder(
        
        itemCount: 5,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      
      
      
      
      
      
      
      
      
      
       itemBuilder: (context , index){


        return Container(
         width: 100,
         height: 100,

         child: Container(
            alignment: Alignment.topLeft, width: 100,height: 100, 
          child: Text("Computers" , style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold , color: Colors.black , ),),
          
          
          decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://media.istockphoto.com/id/1140541722/photo/modern-laptop-on-white-background.jpg?s=170667a&w=0&k=20&c=T00CzYcAaqwrlZHuF1UgioIorHni-wy-AJ22rhOYt4I=" , ),fit: BoxFit.cover )),
          
          ) , 
         


        );
        



       }    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    ),
    
    )
    );
  }
}