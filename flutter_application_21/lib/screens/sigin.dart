import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_21/model/user_model.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SiginScreen extends StatefulWidget {
  const SiginScreen({super.key});

  @override
  State<SiginScreen> createState() => _SiginScreenState();
}

class _SiginScreenState extends State<SiginScreen> {

var namecontroller = TextEditingController();
var emailcontroller = TextEditingController();
var phonecontroller = TextEditingController();
var passwordcontroller = TextEditingController(); 

final ImagePicker picker = ImagePicker() ; 

SharedPreferences? prefs ; 

File? image;



bool isChecked = false ;

  @override
  
  void iniState(){
    _getDate();
    super.initState();
  }

  _getDate() async{

    prefs = await SharedPreferences.getInstance();
  }




  Widget build(BuildContext context) {
    return  Scaffold(
    

      appBar: AppBar(

        backgroundColor: Colors.deepPurple,
        title: Text("Sig in " , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20 ),),
      ),


      body: SingleChildScrollView(

        physics: const BouncingScrollPhysics(),

        child: Column(
        
        
        
        children: [


        image == null 
          ? InkWell(

            onTap: () async{
              final XFile ? file = 
              await picker.pickImage(source: ImageSource.gallery);

              image = File(file!.path);

              setState(() {});
            },

            child: Container(
             
             width: 150,
             height: 150,

             decoration: BoxDecoration(

            color: Colors.white ,
            borderRadius: BorderRadius.circular(75),

             ),

             child: const Icon(
             Icons.add , 
             color: Colors.deepOrange, 
             ),





            ),








          )
          :CircleAvatar(radius: 75,
          backgroundImage: FileImage(   image!   ),
          
          ) , 



          Container(

            margin: EdgeInsets.all(10),

        width: 370,
        // margin: EdgeInsets.all(10),
      child: TextFormField(
        
        controller: namecontroller,
        
        maxLines: 2,minLines:1 , maxLength: 100,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(

     labelText: "Name" , 
     border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))

      ),
      
      
      
      ), ),


// #2

      Container(


         

        width: 370,
         margin: EdgeInsets.all(10),

        //  margin: EdgeInsets.all(10),

      child:TextFormField(
        controller: passwordcontroller,

      maxLines: 2,minLines: 1,maxLength: 100, keyboardType: TextInputType.visiblePassword,

      decoration: InputDecoration(
      suffixIcon: Icon(Icons.password_sharp), 
      labelText: " Password" , 
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20) ,),
       hoverColor: Colors.indigo ,

      ),
      )), 

      // #3


       Container(

        width: 370,
         margin: EdgeInsets.all(10),

        //  margin: EdgeInsets.all(10),

      child:TextFormField(

        controller: emailcontroller,
        

      maxLines: 2,minLines: 1,maxLength: 100, keyboardType: TextInputType.visiblePassword,

      decoration: InputDecoration(
      suffixIcon: Icon(Icons.email), 
      labelText: "Emile" , 
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20) ,),
       hoverColor: Colors.indigo ,

      ),
      )), 

      // #4


       Container(

         margin: EdgeInsets.all(10),

        width: 370,

        //  margin: EdgeInsets.all(10),

      child:TextFormField(

        controller: phonecontroller,
        

      maxLines: 2,minLines: 1,maxLength: 100, keyboardType: TextInputType.visiblePassword,

      decoration: InputDecoration(
      suffixIcon: Icon(Icons.phone), 
      labelText: "Phon Number" , 
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20) ,),
       hoverColor: Colors.indigo ,

      ),)),



      Container(child: Row(children: [

        SizedBox(

          
          width: 200,
          
          child: CheckboxListTile(title: Text("Female"),
            
            selected: isChecked,
            value: isChecked,
             onChanged:(value){
        
              isChecked = value ?? false ;
             setState(() {
               
             });
        
              
             }
             
             
             ),
        ),


  SizedBox(
              width: 200,
              

    child: CheckboxListTile(title: Text("Male"),
      
      selected: isChecked,
      value: isChecked,
       onChanged:(value2){
  
        isChecked = value2 ?? false ;
       setState(() {
         
       });
  
        
       }
       
       
       ),
  ),

      ],),), 


      MaterialButton(onPressed: (){
     

     UserModel user = UserModel(

      Name: namecontroller.text , 
      Password: passwordcontroller.text , 
      email: emailcontroller.text , 
      phone: phonecontroller.text , 
      image: image!.path , 

    




     );

     if (prefs!.containsKey(emailcontroller.text)){
      ScaffoldMessenger.of(context).showSnackBar(

        const SnackBar(content: Text("Email is exist ")));
     } else  {


      prefs! 

      .setString(emailcontroller.text, jsonEncode(user.toMap()))
      .then((value) {
      Navigator.pop(context);






     });

  }
} , 
child: const Text("create Account"),

)


],
),


),

);

}
}