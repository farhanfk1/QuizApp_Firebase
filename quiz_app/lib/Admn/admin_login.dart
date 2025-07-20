import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/Admn/add_quiz.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  TextEditingController usernamecontroller= TextEditingController();
    TextEditingController passwordcontroller= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFededeb),
      body: Container(
        child: Stack(children: [
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height/2
            ),
            padding: EdgeInsets.only(top: 45,left: 20,right: 20),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Color.fromARGB(255, 53, 51, 51),Colors.black],
              begin: Alignment.topLeft,end: Alignment.bottomRight
              ),
              borderRadius: BorderRadius.vertical(
                top: Radius.elliptical(MediaQuery.of(context).size.width, 110.0)
                )
              )
            ),
        Container(
          margin: EdgeInsets.only(left: 30,right: 30,top: 60,),
          child: Form(child: Column(children: [
            Text("Let's start with admin!",style: TextStyle(color: Colors.black,
            fontSize: 25,fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 30,),
            Material(
              elevation: 3.0,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: MediaQuery.of(context).size.height/2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(children: [
                SizedBox(height: 50,),
                Container(
                  padding: EdgeInsets.only(left: 20,top: 5,bottom: 5),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 160, 160, 147)
                    ),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: TextFormField(
                      controller: usernamecontroller,
                      validator: (value){
                        if(value==null || value.isEmpty){
                        return "Plz Enter your name";
                        }
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "UserName",
                        hintStyle: TextStyle(color: Color.fromARGB(255, 160, 160, 147))
                      ),
                    ),
                  ),
                ),
             SizedBox(height: 20,),
                                Container(
                  padding: EdgeInsets.only(left: 20,top: 5,bottom: 5),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 160, 160, 147)
                    ),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: TextFormField(
                      controller: passwordcontroller,
                      validator: (value){
                        if(value==null || value.isEmpty){
                        return "Plz Enter your Password";
                        }
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                        hintStyle: TextStyle(color: Color.fromARGB(255, 160, 160, 147))
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  LoginAdmin();
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.black, 
                    borderRadius: BorderRadius.circular(10),
                
                  ),
                  child: Center(child: Text('LogIn',style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),),
                ),
              )
                ],),
              ),
            )
          ],)),
        )
          
        ],),
      ),
    );
  }

LoginAdmin(){
  FirebaseFirestore.instance.collection("Admin").get().then((snapshot){
   snapshot.docs.forEach((result){
    if(result.data()['id']!=usernamecontroller.text.trim()){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Your ID is not correct',
      style: TextStyle(fontSize: 18,
      ),
      )));
    }else if(result.data()['password']!=passwordcontroller.text.trim()){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Your password is not correct',
      style: TextStyle(fontSize: 18,
      ),
      )));
    }else {
      Route route = MaterialPageRoute(builder: (context)=> AddQuiz());
      Navigator.pushReplacement(context, route);
    }
   });
  });
}

}