import 'package:flutter/material.dart';

void main() {

  runApp(const MyApp()) ; 
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

     home: FormScreen(),
     debugShowCheckedModeBanner: false,

    );
  }
}


class FormScreen  extends StatelessWidget {
   FormScreen ({super.key});

   var controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold( 
      
      
      body: Column(

     children: [
     Container(

      margin: EdgeInsets.all(20),
      child: TextFormField(

        controller: controller,

       maxLines: 5,
       minLines: 1,
       maxLength: 10,
       keyboardType: TextInputType.text,

       
       decoration: InputDecoration(

        prefixIcon: Icon(Icons.email),
        suffixIcon: Icon(Icons.person),
        // hintText: "Email and phone" , 
        labelText: "Email and phone " ,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
         

       ),



      ),
      

     ),

     TextField(),
     ElevatedButton(onPressed: (){
      print(controller.text);},  child: Text("Click Me")),





     


     ],



    ),





    ) );


   
  }
}