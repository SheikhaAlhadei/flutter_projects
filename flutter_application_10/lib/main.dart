import 'package:flutter/material.dart';

void main() {

  runApp(const MyTakst());
  
}

class MyTakst extends StatelessWidget {
  const MyTakst({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      home: MyWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyWidget extends StatefulWidget {
   MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
   

  bool isChecked = false ; 

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:Scaffold(


    body: Center(
      child: Column(
        
       
       children: [
        
    
        
          Container(
    
            
        
          child:Center(
            child: Row(
                
              children: [
                
              Center(
                child: Container(child: Center(
                  child: Text("FACI", style: TextStyle(
                      
                  fontSize: 70 , fontWeight: FontWeight.bold , 
                  ),),
                ) , ),
              ),
                
                
              Container(child: Center(child: Text("O" , style: TextStyle(color: Colors.green , fontSize: 70 , fontWeight: FontWeight.bold , ), )),)
                
              ],
            ),
          ),
        
        
        
          ),
       
    
    
    
       
    
         
    
        
    
    
    
    
    
    
    
        Container(
    
          width: 870,margin: EdgeInsets.all(20),
      
    
           child: TextFormField(
    
            maxLines: 2,minLines: 1,
            // maxLength: 50,
            keyboardType:TextInputType.emailAddress,
    
    
            decoration: InputDecoration(
    
           prefixIcon: Icon(Icons.email),
    
    
            ),
    
    
    
    
    
    
           ),
    
    
    
    
    
      
    
    
    
    
    
        ), 
    
    
        
        Container(
    
    width: 870,margin: EdgeInsets.all(20),
      
    
           child: TextFormField(
    
            maxLines: 2,minLines: 1,
            // maxLength: 50,
            keyboardType:TextInputType.emailAddress,
    
    
            decoration: InputDecoration(
    
           prefixIcon: Icon(Icons.lock),
    
    
            ),
    
    
    
    
    
    
           ),
    
    
    
    
    
    
    
        ), 



        Container(
    
          
    
         child: Row(
           
          // crossAxisAlignment: CrossAxisAlignment.center,
          
          
    
          children: [
    
            
           child: Container( 
            
        Theme(
                    data: ThemeData(
                        checkboxTheme: CheckboxThemeData(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)))), 
    
    
    
                            CheckboxListTile(title: Text("Remember me"),
            
               selected: isChecked,
                value: isChecked,
            
                 onChanged: (value){
    
                  isChecked = value ?? false ; 
    
                 setState(() { }); }


             ),
            ),

             ),
                  
       ],
       
       
       ),
    ), 
    






      
      Container(
       width: 250, 
      child: ElevatedButton(onPressed: (){ print("done");         }, child: Text("LOGIN") ,  ),

      ),


      Center(
        child: Container(
      
      
          margin: EdgeInsets.all(20),
        
          child:Row(
        
            children: [
        
            Container(child: Center(
              child: Text("Don't have an account?", style: TextStyle(
                  
              fontSize: 15 , fontWeight: FontWeight.bold , 
              ),),
            ) , ),
        
        
            Container(child: Center(child: Text("Signup here" , style: TextStyle(color: Colors.green , fontSize: 15 , fontWeight: FontWeight.bold , ), )),)
              
            ],
          ),
        
        
        
          ),
      ),
     











     












 ]   
           
            
          
    
    
         ),
    ),






      ), 
    

    );
  }
}