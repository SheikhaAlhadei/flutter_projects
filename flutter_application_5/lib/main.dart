import 'package:flutter/material.dart';

void main() {

runApp(Login());

}





class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Row(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


    body: Column(children: [

     Column(
      children: [Image(image:AssetImage("assete/yaml.jpg"),)], 

     ),



     Column(children:[

     Text("Name:Sheikha Khamis "),
     Text("Phone:92824722"),
     Text("Email:s56J171447@outlook.com"),

     ]

     ),




    //  Column(




    //  ) , 








    ]),






    );
  }
}