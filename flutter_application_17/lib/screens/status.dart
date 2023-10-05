import 'package:flutter/material.dart';
import 'package:flutter_application_17/model/models.dart';

class StatusScreen extends StatelessWidget {
   StatusScreen({super.key});

  List<ChatModel> chats = [

      ChatModel(image:"https://cdn.vectorstock.com/i/preview-1x/15/40/blank-profile-picture-image-holder-with-a-crown-vector-42411540.jpg",
      name: "My status",
      date: "Today 12:30"),

      ChatModel(image:"https://cdn.vectorstock.com/i/preview-1x/15/40/blank-profile-picture-image-holder-with-a-crown-vector-42411540.jpg",
      name: "Alex",
      date: "Today 1:40"),

       ChatModel(image:"https://cdn.vectorstock.com/i/preview-1x/15/40/blank-profile-picture-image-holder-with-a-crown-vector-42411540.jpg",
      name: "Alex",
      date: "Today 1:40"),


       ChatModel(image:"https://cdn.vectorstock.com/i/preview-1x/15/40/blank-profile-picture-image-holder-with-a-crown-vector-42411540.jpg",
      name: "Dear",
      date: "Today 10:40"),

       ChatModel(image:"https://cdn.vectorstock.com/i/preview-1x/15/40/blank-profile-picture-image-holder-with-a-crown-vector-42411540.jpg",
      name: "Dear",
      date: "Today 10:40"),


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

    );
  }
}