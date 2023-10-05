import 'package:flutter/material.dart';
import 'package:flutter_application_18/models/products_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartScreen extends StatefulWidget {
   CartScreen({super.key , required this.products});

  List<productsModel> products ; 

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
 
 void initState(){
_getData();
super.initState();
 }

 List<productsModel> CartProuducts=[] ; 

 _getData() async{

SharedPreferences  prefs = await SharedPreferences.getInstance();
for(var element in widget.products){
if (prefs.containsKey(element.name!)){
  CartProuducts.add(element);
}

setState(() {
  
});


}

 }

  Widget build(BuildContext context) {
    return Scaffold(


    appBar: AppBar(
      backgroundColor: Colors.deepPurple,
      title: Text("Cart"),
    ),


    body: ListView.builder(itemBuilder: (context , index){

     return Card(

      child: ListTile(trailing:InkWell(
        onTap: () async{
       
       SharedPreferences prefs = await SharedPreferences.getInstance();
       prefs.remove(CartProuducts[index].name!);
       CartProuducts.remove(CartProuducts[index]);
       setState(() {});

        },

       child: Text("remove"),
      ),
      title: Text(CartProuducts[index].name!),
      subtitle: Text(CartProuducts[index].Category!),
      leading: Text(CartProuducts[index].price.toString()),





      
      ) 
      );

    },
itemCount:  CartProuducts.length,

     ),



    );











  
  }
}