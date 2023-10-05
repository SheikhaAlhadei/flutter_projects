import 'package:flutter/material.dart';
import 'package:flutter_application_17/model/models.dart';

class SettingsScreen extends StatelessWidget {
   SettingsScreen({super.key});

  List<ChatModel> chats =[



 ChatModel(image:"https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80",
      name: "projammer",
      massage: "Hi, programmer,how are you?"),







  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(







   body: ListView.builder(itemBuilder: (context , index){
       return ListTile(
        

        leading: CircleAvatar(
          backgroundImage: NetworkImage(chats[index].image!),
        ),
        title:  Text(chats[index].name!),
        subtitle: Text(chats[index].massage!),
       );
   },),

    // child: Container(
    //   child: Row(
    
    //    children: [
    
    //     Container(child: Icon(Icons.key),),
    //     Container(child: Icon(Icons.chat),),
    //     Container(child: Icon(Icons.notifications),),
    //     Container(child: Icon(Icons.data_usage),),
    //     Container(child: Icon(Icons.help_outline_outlined),),
    //     Container(child: Icon(Icons.people),),],
    //   ),
        
    
    
    
    
       
    
    
    
    
    
    
      
    
    
    
    
    
    
    
    
    
    
    
      
    );
  }
}