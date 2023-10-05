import 'package:flutter/material.dart';
import 'package:flutter_application_17/model/models.dart';

class ChatScreen extends StatelessWidget {
   ChatScreen ({super.key});

     List<ChatModel> chats = [

      ChatModel(image:"https://cdn.vectorstock.com/i/preview-1x/15/40/blank-profile-picture-image-holder-with-a-crown-vector-42411540.jpg",
      name: "projammer",
      massage: "Hi, programmer,how are you?"),


      ChatModel(image:"https://marketplace.canva.com/EAFSZhFumYM/1/0/1600w/canva-dark-red-neon-futuristic-instagram-profile-picture-MUPA4np8in0.jpg",
      name: "projammer",
      massage: "Hi, programmer,how are you?"),


      ChatModel(image:"https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80",
      name: "projammer",
      massage: "Hi, programmer,how are you?"),


      ChatModel(image:"https://wallpapers.com/images/hd/cool-profile-picture-1ecoo30f26bkr14o.jpg",
      name: "projammer",
      massage: "Hi, programmer,how are you?"),

      ChatModel(image:"https://i.pinimg.com/736x/59/37/5f/59375f2046d3b594d59039e8ffbf485a.jpg",
      name: "projammer",
      massage: "Hi, programmer,how are you?"),

       ChatModel(image:"https://marketplace.canva.com/EAFSZhFumYM/1/0/1600w/canva-dark-red-neon-futuristic-instagram-profile-picture-MUPA4np8in0.jpg",
      name: "projammer",
      massage: "Hi, programmer,how are you?"),


      ChatModel(image:"https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80",
      name: "projammer",
      massage: "Hi, programmer,how are you?"),

 ChatModel(image:"https://marketplace.canva.com/EAFSZhFumYM/1/0/1600w/canva-dark-red-neon-futuristic-instagram-profile-picture-MUPA4np8in0.jpg",
      name: "projammer",
      massage: "Hi, programmer,how are you?"),


      ChatModel(image:"https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80",
      name: "projammer",
      massage: "Hi, programmer,how are you?"),

 ChatModel(image:"https://marketplace.canva.com/EAFSZhFumYM/1/0/1600w/canva-dark-red-neon-futuristic-instagram-profile-picture-MUPA4np8in0.jpg",
      name: "projammer",
      massage: "Hi, programmer,how are you?"),


      ChatModel(image:"https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80",
      name: "projammer",
      massage: "Hi, programmer,how are you?"),



     ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(


     body: ListView.builder(itemBuilder: (context , index){
       return ListTile(
        

        leading: CircleAvatar(
          backgroundImage: NetworkImage(chats[index].image!),
        ),
        title:  Text(chats[index].name!),
        subtitle: Text(chats[index].massage!),









       );

     },

     itemCount: chats.length,

     ),




     
     
     
     
     
     
     
     
     
     );





     





     










    
  }
}