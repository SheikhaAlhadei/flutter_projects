


import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {

List users=[
 {"image":"https://media.istockphoto.com/id/1178124985/photo/oman-flag.jpg?s=612x612&w=0&k=20&c=bhNCjDiS9jp-eCDfo5Xqa8B2eK6B-zg66t2xSblgwoo=" , 
 "contry":"Oman"    }, 

 


] ; 



  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(



      appBar: AppBar(),


      body: ListView.builder(
        itemCount: users.length,

       scrollDirection: Axis.vertical,
       itemBuilder: (context,index){

         return Card(

          
         
         child: ListTile(

          leading: Image.network(users[index]["image"]),
 
          title: Text(users[index]["contry"]),
         
         
         ),






         );


       },

      )










































      
      
      
//       Column(
//         children: [

//         Image.network("https://c4.wallpaperflare.com/wallpaper/839/1000/912/world-1920x1080-taj-mahal-taj-wallpaper-preview.jpg" , 
//         height: MediaQuery.sizeOf(context).height* .25,
//         fit: BoxFit.cover,),],
//  ), 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    ),);
  }
}