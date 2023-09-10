import 'package:flutter/material.dart';

void main() {
 runApp(const Taske()); 
}


class Taske extends StatelessWidget {
  const Taske({super.key});

  @override

  Widget build(BuildContext context) {
    return MaterialApp(

    home: Home(),
    debugShowCheckedModeBanner: false,

    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      endDrawer: Drawer(),
     

   appBar: AppBar( backgroundColor: Colors.amber, title:Text("Feed"),),




    body: Column(

  children: [
Container(

  height: 100,
   margin:  const EdgeInsets.symmetric(
    vertical: 06.0,
  ),
     decoration: BoxDecoration( shape: BoxShape.rectangle , color: Color.fromARGB(255, 241, 240, 240),  boxShadow:[BoxShadow(blurRadius: 4 , color: Color(0xE6000000))]),


child:(Row(
children: [
 CircleAvatar(radius: 40,backgroundImage: AssetImage("assete/icon.jpg")),


Column( children: [Text("Bill will"),Text("Software Developer"),Text("3:40")]   ),



],


)),),

Container(height: 100,
   margin:  const EdgeInsets.symmetric(
    vertical: 06.0,
  ),
     decoration: BoxDecoration( shape: BoxShape.rectangle , color: Color.fromARGB(255, 241, 240, 240),  boxShadow:[BoxShadow(blurRadius: 4 , color: Color(0xE6000000))]),


child:(Row(
children: [
 CircleAvatar(radius: 40,backgroundImage: AssetImage("assete/icon.jpg")),


Column( children: [Text("Andy Smith"),Text("UI Designer"),Text("5:50")]   ),



],


)),),



Container(height: 100,
   margin:  const EdgeInsets.symmetric(
    vertical: 06.0,
  ),
     decoration: BoxDecoration( shape: BoxShape.rectangle , color: Color.fromARGB(255, 241, 240, 240),  boxShadow:[BoxShadow(blurRadius: 4 , color: Color(0xE6000000))]),
child:(Row(
children: [
 CircleAvatar(radius: 40,backgroundImage: AssetImage("assete/icon.jpg")),


Column( children: [Text("Julie Robert"),Text("Software Tester"),Text("9:20")]   ),



],


))

),


Container(height: 100,
   margin:  const EdgeInsets.symmetric(
    vertical: 06.0,
  ),
     decoration: BoxDecoration( shape: BoxShape.rectangle , color: Color.fromARGB(255, 241, 240, 240),  boxShadow:[BoxShadow(blurRadius: 4 , color: Color(0xE6000000))]),
child:(Row(
children: [
 CircleAvatar(radius: 40,backgroundImage: AssetImage("assete/icon.jpg")),


Column( children: [Text("Creepy Story"),Text("Software Tester"),Text("9:20")]   ),



],


))

),


Container(height: 100,
   margin:  const EdgeInsets.symmetric(
    vertical: 06.0,
  ),
     decoration: BoxDecoration( shape: BoxShape.rectangle , color: Color.fromARGB(255, 241, 240, 240),  boxShadow:[BoxShadow(blurRadius: 4 , color: Color(0xE6000000))]),
child:(Row(
children: [
 CircleAvatar(radius: 40,backgroundImage: AssetImage("assete/icon.jpg")),


Column( children: [Text("Cloe Suger"),Text("Software Tester"),Text("9:20")]   ),



],


))

),




],






    )







    );}}