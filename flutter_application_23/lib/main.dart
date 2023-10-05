import 'package:flutter/material.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';

void main() {
  runApp(const AppRoot());
}
class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {

 theme: ThemeData(
          primarySwatch: const MaterialColor(0xFF091D36, <int, Color>{
            50: Color(0xFFE1E4E7),
            100: Color(0xFFB5BBC3),
            200: Color(0xFF848E9B),
            300: Color(0xFF536172),
            400: Color(0xFF2E3F54),
            500: Color(0xff091D36),
            600: Color(0xFF081A30),
            700: Color(0xFF061529),
            800: Color(0xFF051122),
            900: Color(0xFF020A16),
          }),);


    return MaterialApp(


      home: 
      SplashScreen(),
      debugShowCheckedModeBanner:false ,
    );
  }
}




class  SplashScreen extends StatelessWidget {
  const  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    
    return Scaffold(

   


   body: Container(color: Colors.redAccent,
     child: Column(children: [
   
      
   
          RippleAnimation(
              child: CircleAvatar(
                minRadius: 75,
                maxRadius: 75,
                backgroundImage: NetworkImage("https://static.vecteezy.com/system/resources/thumbnails/015/881/036/small_2x/flat-isometric-3d-illustration-programmer-web-application-developer-and-maintainer-free-vector.jpg"),
              ),
              color: Colors.deepOrange,
              delay: const Duration(milliseconds: 300),
              repeat: true,
              minRadius: 75,
              ripplesCount: 6,
              duration: const Duration(milliseconds: 6 * 300),
            )
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
     ]),
   ),

















    );
  }
}