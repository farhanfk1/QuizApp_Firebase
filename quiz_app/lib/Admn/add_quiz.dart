import 'package:flutter/material.dart';

class AddQuiz extends StatefulWidget {
  const AddQuiz({super.key});

  @override
  State<AddQuiz> createState() => _AddQuizState();
}

class _AddQuizState extends State<AddQuiz> {
  final List<String> quizItems =['Animal', 'Sports', 'Random','Fruits', 'Objects' ];
  TextEditingController option1controller = TextEditingController();
  TextEditingController option2controller = TextEditingController();
  TextEditingController option3controller = TextEditingController();
  TextEditingController option4controller = TextEditingController();
  TextEditingController correct = TextEditingController();
String? selectedCategory;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ADD QUIZ",style: TextStyle(
          color: Colors.black, fontSize: 30,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("Upload the Quiz picture",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w700
            ),
            ),
            SizedBox(height: 20,),
            Center(child: Material(
              elevation: 4.0,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 1.5
                  ),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Icon(Icons.camera_alt_outlined, color: Colors.black,),
              ),
            ),),
            SizedBox(height: 20,),
            Text('Option 1', style: TextStyle(
              color: Colors.black54,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFececf8),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: option1controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter Option 1",
                  hintStyle: TextStyle(color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  )
                ),
              ),
            ),
                      SizedBox(height: 20,),
            Text('Option 2', style: TextStyle(
              color: Colors.black54,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFececf8),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: option2controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter Option 2",
                  hintStyle: TextStyle(color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  )
                ),
              ),
            ),
                      SizedBox(height: 20,),
            Text('Option 3', style: TextStyle(
              color: Colors.black54,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFececf8),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: option3controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter Option 3",
                  hintStyle: TextStyle(color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  )
                ),
              ),
            ),
                      SizedBox(height: 20,),
            Text('Option 4', style: TextStyle(
              color: Colors.black54,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFececf8),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: option4controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter Option 4",
                  hintStyle: TextStyle(color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  )
                ),
              ),
            ),
               SizedBox(height: 20,),
            Text('Correct Answer', style: TextStyle(
              color: Colors.black54,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFececf8),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: correct,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter correct answer",
                  hintStyle: TextStyle(color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  )
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFececf8),
                borderRadius: BorderRadius.circular(10),
                
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  items: quizItems.map((item)=> DropdownMenuItem(value: item ,child: Text(item, style: TextStyle(
                    fontSize: 18, color: Colors.black,
                  ),))).toList(),
                   onChanged: ((value)=>setState(() {
                     selectedCategory = value;
                   }) ),dropdownColor: Colors.white,
                   hint: Text('Select Category'),
                   iconSize: 36,
                   icon: Icon(Icons.arrow_drop_down, color: Colors.black,),
                   value: selectedCategory,

                   )),
            ),
            SizedBox(height: 30,),
            Center(
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: Center(
                    child: Text("Add",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                ),
              ),
            )
          ],),
        ),
      ),
    );
  }
}