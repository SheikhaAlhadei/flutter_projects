import 'package:flutter/material.dart';

void main() {
runApp(MyButton());
}


class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Button(),
      debugShowCheckedModeBanner: false,
    );
  }
}    


class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     drawer: Drawer(


      child: DrawerHeader(child: Column(children: [

     CircleAvatar(
      radius: 30,

      backgroundImage: AssetImage("assete/images.jpeg"),
     )


      ],)),
     ),

     appBar: AppBar(

      
       



     ),
     

     body: Center(
       
          // child: GestureDetector(

          //  onTap: (){


          //   print("Image");
          //  },

          //  child: Image.asset("naasset/google.pngme" ,
           
          //  width: 50,height: 50,
          //  ),

          // ),
        

         child: InkWell(

           onTap: (){


            print("Image");
           },

           child: Image.asset("assete/im.jpg" ,
           
           width: 50,height: 50,
           ),

          ),
     
       ),
     )






    ;
  }
}