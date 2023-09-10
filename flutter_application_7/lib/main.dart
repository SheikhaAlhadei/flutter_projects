import 'package:flutter/material.dart';

void main() {

  runApp(Myapp());
 
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Posts() ,
      
    );
  }
}

class Posts extends StatefulWidget {
  const Posts({super.key});

  @override
  State<Posts> createState() => _PostsState();

}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    appBar: AppBar(
      title: Text("Posts"),
      backgroundColor: Colors.blue,
    ),
    body: Column(
    children: [
      Container(

        
     

      )
    ],


    ),

     





    );
  }
}