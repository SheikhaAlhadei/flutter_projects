import 'package:flutter/material.dart';

void main() {
runApp(const Yoga()); 
}



class Yoga extends StatelessWidget {
  const Yoga ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(


      appBar: AppBar(

        actions: [Icon(Icons.search) ],

      title: Center(child: Text("Yoge")),
      leading: Icon(Icons.arrow_back_ios_new , color: Colors.white, size: 10,),
      ),


      






      body: Column(
          children: [
           Container(  margin: EdgeInsets.all(20),height: 100,child: Text("Schedule" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),)),



            Container(
            child: Column(
              children: [

              Column(
               

              children: [

// Container(

//   width: 200,
//   height: 200,
  
//   child:Card(
                
//               child: Image(image: AssetImage("assete/yo.jpg")),
              



//               ),),




              Container(

  width: 300,
  height: 300,
  
  child:Card(
                
              child: Image(image: AssetImage("assete/yo.jpg" ),width: 20,height: 20,),
              



              ),),
              
             

              
             



              ],


              ),










              Column(), 



              ],)



            ),
            



            


















          ],
      
      
      
      
      
      
          
        ),
      ),
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    );
  }
}