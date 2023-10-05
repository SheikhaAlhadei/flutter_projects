import 'package:flutter/material.dart';
import 'package:flutter_application_17/screens/chats.dart';
import 'package:flutter_application_17/screens/settings.dart';
import 'package:flutter_application_17/screens/status.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        
        appBar:AppBar(
          title: Text("WhatsApp"),
          backgroundColor: Colors.greenAccent,
          

          actions: [

             Icon(Icons.search),

            PopupMenuButton(itemBuilder: (context){
              return ["Setting" ].map((e){
               return  PopupMenuItem(child: Text(e),
               onTap: () {
                 print(e);
               },);

              }).toList();
            },
            
             offset:Offset(0, 15) , 
            
            ),

         

           
             
          ],

 
          //  Icon(Icons.camera_alt)


          bottom: TabBar(tabs: [

          Tab(icon: Icon(Icons.camera_alt),),
          Tab(text: ("CHATS" ),), 
          Tab(text: ("STATUS"),),
          Tab(text: ("CALLS"),)




          ]),





        ), 



        body: TabBarView(children: [

         Center(
          child: Text("camera"),
         ),

         ChatScreen(),
         StatusScreen(), 

        ]), 
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      ),
    );
  }
}