import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    
    return   DefaultTabController(
      
      length: 3,
      child: Scaffold(
      

      appBar: AppBar(title: Text("My App"),
     
      actions: [   PopupMenuButton(itemBuilder: (context){
     return  ["setting ", "Theme Mode "].map((e) {

      return PopupMenuItem(child: Text(e),
      
      onTap: (){
        print(e);
      },
      );
     }).toList();
     },

     offset: Offset(0, 15),
     ),

     ],








      bottom: TabBar(tabs: [

        Tab(icon: Icon(Icons.home), text: "Home",),
        Tab(icon: Icon(Icons.video_call), text: "Cells",),
        Tab(icon: Icon(Icons.chat), text: "Chats",),
        

      ]),),




body: TabBarView(children: [
  
  Center(child: Text("Home"),),
  Center(child: Text("Cell"),),
  Center(child: Text("Chat"),),









]),












      ),







    );
  }
}