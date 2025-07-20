import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffedf3f6),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children:[ Container(
                  height: 220,
                  padding: EdgeInsets.only(top: 50, left: 20),
                  decoration: BoxDecoration(
                    color: Color(0xFF2a2b31), 
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    
                   ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.asset("images/place.jpg",height: 50,width: 50,fit: BoxFit.cover,)),
                    SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text('Farhan Khan', style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    )
                  ],),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.black,
                  borderRadius: BorderRadius.circular(20)
                  ),
                  margin: EdgeInsets.only(top: 120,left: 20, right: 20),
                  child: Row(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset('images/quiz.jpg',height: 200, )),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
          Text('Play &\nWin', style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                      Text('Play Quiz by\nguessing the image', style: TextStyle(color: Colors.white38,fontSize: 15,fontWeight: FontWeight.bold),),
                    ],)
          
                ],
                ),
                )
                ],
                
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('Top Quiz Categories',style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Material(
                    borderRadius: BorderRadius.circular(20),
                    elevation: 5.0,
                    child: Container(
                      width: 150,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(children:[ Image.asset("images/place.jpg", height: 80,width: 80,fit: BoxFit.cover,),
                      SizedBox(height: 20,),
                      Text('Place',style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),),
                      
                      ]
                      ),
                      ),
                  ),
                    
                    Material(
                    borderRadius: BorderRadius.circular(20),
                    elevation: 5.0,
                    child: Container(
                      width: 150,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(children:[ Image.asset("images/animal.jpg", height: 80,width: 80,fit: BoxFit.cover,),
                      SizedBox(height: 20,),
                      Text('Animals',style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),),
                      
                      ]
                      ),
                      ),
                  ),
                    
                ],),
              ),
        
        
        
               SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Material(
                    borderRadius: BorderRadius.circular(20),
                    elevation: 5.0,
                    child: Container(
                      width: 150,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(children:[ Image.asset("images/fruit.jpg", height: 80,width: 80,fit: BoxFit.cover,),
                      SizedBox(height: 20,),
                      Text('Fruits',style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),),
                      
                      ]
                      ),
                      ),
                  ),
                    
                    Material(
                    borderRadius: BorderRadius.circular(20),
                    elevation: 5.0,
                    child: Container(
                      width: 150,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(children:[ Image.asset("images/object.jpg", height: 80,width: 80,fit: BoxFit.cover,),
                      SizedBox(height: 20,),
                      Text('Objects',style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),),
                      
                      ]
                      ),
                      ),
                  ),
                    
                ],),
              ),
              
               SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Material(
                    borderRadius: BorderRadius.circular(20),
                    elevation: 5.0,
                    child: Container(
                      width: 150,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(children:[ Image.asset("images/sport.jpg", height: 80,width: 80,fit: BoxFit.cover,),
                      SizedBox(height: 20,),
                      Text('Sports',style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),),
                      
                      ]
                      ),
                      ),
                  ),
                    
                    Material(
                    borderRadius: BorderRadius.circular(20),
                    elevation: 5.0,
                    child: Container(
                      width: 150,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(children:[ Image.asset("images/random.jpg", height: 80,width: 80,fit: BoxFit.cover,),
                      SizedBox(height: 20,),
                      Text('Random',style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),),
                      
                      ]
                      ),
                      ),
                  ),
                    
                ],),
              )
            ],
            
          ),
        ),
      ),
    );
  }
}