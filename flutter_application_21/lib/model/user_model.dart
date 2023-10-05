class UserModel{
 

 String ? Name ; 
 String? email ; 
 String ? Password ; 
 String ? phone ;
 String ? image ; 


 UserModel({this.Name , this.Password , this.email , this.phone , this.image}); 


 Map<String , dynamic > toMap(){

  return {



    "name":Name , 
    "email" : email , 
    "password"  : Password ,
    "phone" : phone , 
    "image" : image ,
  };








} 

}