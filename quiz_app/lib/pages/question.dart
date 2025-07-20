import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF004840),
      body: Container(
        child: Column(children: [
       Padding(
         padding:EdgeInsets.only(top: 50,left: 20),
         child: Row(children: [
          Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(color: Color(0xFFf35b32), 
            borderRadius: BorderRadius.circular(60)),
            child: Center(child: Icon(Icons.arrow_back_ios,color: Colors.white   ,))),
            SizedBox(width: 100,),
            Text('Sports', style: TextStyle(color: Colors.white,fontSize: 24,
            fontWeight: FontWeight.bold
            ),)
         ],),
       ),
           SizedBox(height: 20,),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width,
          
             decoration: BoxDecoration(
              color: Colors.white, 
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30)
                ),
             ),
             child: SingleChildScrollView(
               child: Column(children: [
               Padding(
                 padding: const EdgeInsets.only(left: 20,right: 20,top: 40),
                 child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                   child: Image.asset("images/ronaldo.jpg", height: 300,
                   fit: BoxFit.cover,
                   ),
                 ),
               ),
               SizedBox(height: 20,),
                  Container(
                    margin: EdgeInsets.only(left: 20,right: 20),
                    padding: EdgeInsets.all(15),
                         width: MediaQuery.of(context).size.width,
                         decoration: BoxDecoration(border: Border.all(
                           color: Color(0xFF818181)
                         ),
                         borderRadius: BorderRadius.circular(10)),
                         child: Text("Cristiano Ronaldo",style: TextStyle(color: Colors.black,
                         fontSize: 18, fontWeight: FontWeight.w500
                         ),),
                       ),
                        SizedBox(height: 20,),
                  Container(
                    margin: EdgeInsets.only(left: 20,right: 20),
                    padding: EdgeInsets.all(15),
                         width: MediaQuery.of(context).size.width,
                         decoration: BoxDecoration(border: Border.all(
                           color: Color(0xFF818181)
                         ),
                         borderRadius: BorderRadius.circular(10)),
                         child: Text("Leonal Messi",style: TextStyle(color: Colors.black,
                         fontSize: 18, fontWeight: FontWeight.w500
                         ),),
                       ), SizedBox(height: 20,),
                  Container(
                    margin: EdgeInsets.only(left: 20,right: 20),
                    padding: EdgeInsets.all(15),
                         width: MediaQuery.of(context).size.width,
                         decoration: BoxDecoration(border: Border.all(
                           color: Color(0xFF818181)
                         ),
                         borderRadius: BorderRadius.circular(10)),
                         child: Text("Neymar",style: TextStyle(color: Colors.black,
                         fontSize: 18, fontWeight: FontWeight.w500
                         ),),
                       ), SizedBox(height: 20,),
                  Container(
                    margin: EdgeInsets.only(left: 20,right: 20),
                    padding: EdgeInsets.all(15),
                         width: MediaQuery.of(context).size.width,
                         decoration: BoxDecoration(border: Border.all(
                           color: Color(0xFF818181)
                         ),
                         borderRadius: BorderRadius.circular(10)),
                         child: Text("Andres Ineista",style: TextStyle(color: Colors.black,
                         fontSize: 18, fontWeight: FontWeight.w500
                         ),),
                       ),
               ],),
             ),
          ),
        ),
           
      
      ],),),
    );
  }
}