import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_18/models/products_model.dart';
import 'package:flutter_application_18/screens/cart_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen ({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // ##

  List<productsModel> products = [
  
  productsModel(
    name: "Shoes" ,
    Category: "shoes" , 
    price: 100.0 , 
  ) , 

   productsModel(
    name: "Black Bag" ,
    Category: "Bags" , 
    price: 50.0 , 
  ) , 


   productsModel(
    name: "Sport watch" ,
    Category: "Watch" , 
    price: 500.0 , 
  ) , 




  ] ;







  @override
  Widget build(BuildContext context) {
    return  Scaffold(


      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("Products"),
        actions: [IconButton(onPressed: (){

         Navigator.push(context, 
         MaterialPageRoute(builder: (context)=> CartScreen (products:products),));


        }, icon: const Icon(Icons.shopping_cart))],
      ),


      body: ListView.builder(
      
      itemBuilder: (context , index){

       return Card(
       

       child: ListTile(
        
        trailing: IconButton(onPressed: () async{

          SharedPreferences prefs =

           await SharedPreferences.getInstance();

           String data = jsonEncode(products[index].toMap());
           prefs.setString(products[index].name!, data);

        }, 

        icon: const Icon(Icons.add_shopping_cart),
        ),
        
        title: Text(products[index].name!),
        subtitle: Text(products[index].Category!), 
        leading:  Text(products[index].price.toString()),




       ),
       );
  

        }, itemCount: products.length,
        
        ),

      







    



      

     





















    );
  }
}