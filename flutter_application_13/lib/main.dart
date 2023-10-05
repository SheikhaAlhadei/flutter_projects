import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyWidget(),

      debugShowCheckedModeBanner: false,
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

    appBar: AppBar(),


    body: 
        ListView(
  padding: const EdgeInsets.all(8),
  children:[
    
         Center(
           child: Container(
            margin: EdgeInsets.all(20),
            width: 1000,
            height: 300,
            child: Card(),
                 ),
         ),
    
        Container(
           
           height: 100,

          child: Text("Basic Yoga For Beginners" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
        ),


        // Container(), 
        // Container(), 

        
        Container(
         
         child: GridView.count(primary: false,
  padding: const EdgeInsets.all(20),
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  crossAxisCount: 2,
  
  children: [
Card(

child: Image.asset("assete/yog.jpeg")

),
Card(child: Image.asset("assete/yog.jpeg"),
), 




  ],
  
  
  
  
  
  ),





        ), 

       
    
    
    
    
    
       ],
    
    
    
    
    
    
    
    ),
    ),
    

























    );
  }
}