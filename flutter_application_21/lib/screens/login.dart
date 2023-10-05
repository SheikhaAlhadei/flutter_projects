import 'package:flutter/material.dart';
import 'package:flutter_application_21/screens/sigin.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   var controller = TextEditingController();

 var controller2 = TextEditingController();

bool isChecked = false ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        backgroundColor: Colors.deepPurple,
        title: Text("Log in " , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20 ),),
      ),

    
    body: ListView(

    children: [

    Center(child: Container(child: Image.asset("assete/login.png"), height: 300,)),

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



     
    
     
     
    

     ElevatedButton(onPressed: (){
     
      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const SiginScreen()) ,) ;

     }, child: Text("Log in ")) , 



    




     Container(height: 20,child: Text("Create An Account"),margin: EdgeInsets.all(20),),
    
    
    



   ]),











    


















    












    );
  }
}