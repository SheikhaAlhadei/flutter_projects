import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      home: LoginScreen()
      , debugShowCheckedModeBanner: false,
    );
  }
}


class LoginScreen extends StatefulWidget {
 LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 var controller = TextEditingController();

 var controller2 = TextEditingController();

bool isChecked = false ;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(



      appBar: AppBar(backgroundColor: Colors.blueAccent,),


     body:SingleChildScrollView(
     scrollDirection: Axis.horizontal,
     child: Column(children: [ 
      
      Container(child: Image(image: AssetImage("assete/login.png"),width: 200,height: 200 ,),margin:EdgeInsets.all(30),),

       Container(child:Text("Sign In " , style: TextStyle(
       
       fontWeight: FontWeight.bold , color: Colors.indigo , fontSize: 20 , 

       ),),margin: EdgeInsets.all(10) ,),

      Container(

        width: 370,
        // margin: EdgeInsets.all(10),
      child: TextFormField(
        
        controller: controller,
        
        maxLines: 2,minLines:1 , maxLength: 100,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(

     labelText: "Name or Email Address" , 
     border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))

      ),
      
      
      
      ), ),


      Container(

        width: 370,

        //  margin: EdgeInsets.all(10),

      child:TextFormField(
        controller: controller2,

      maxLines: 2,minLines: 1,maxLength: 100, keyboardType: TextInputType.visiblePassword,

      decoration: InputDecoration(
      suffixIcon: Icon(Icons.password_sharp), 
      labelText: "Enter Password" , 
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20) ,),
       hoverColor: Colors.indigo ,

      ),




      )

   
      
      ), 



       CheckboxListTile(title: Text("has acconut"),
    
    selected: isChecked,
    value: isChecked,
     onChanged:(value){

      isChecked = value ?? false ;
     setState(() {
       
     });

      
     }
     
     
     ),

     ElevatedButton(onPressed: (){
     
     print(controller.text);
     print(controller2.text);

     }, child: Text("Log in ")) , 



    




     Container(height: 20,child: Text("Create An Account"),margin: EdgeInsets.all(20),),
    Container(height: 20,child: Text("Reset Password "),),
    
    



     ]),

     ) 


      








    ));
  }
}