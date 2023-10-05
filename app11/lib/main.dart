import 'package:flutter/material.dart';

void main() {

  runApp(const StackTool());
}



class StackTool extends StatelessWidget {
  const StackTool({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Tool(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class Tool extends StatelessWidget {
  const Tool({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(

        body: Stack(
          children: [

         Positioned(
          
          
          right: -50 ,
          bottom: 0,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,

          ),
          ),
          
          
          Align(

           child: Container(

            width: 50,
            height: 50,
            color: Colors.blue,
           ),



          )





          ],
        
        
        
        
        
        
        
        
        
        ),













      ),

   




    );
  }
}