import "package:flutter/Material.dart";

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Student ID Card"),
        
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Colors.blue,
            ),
            borderRadius: BorderRadius.circular(15),

          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.person,
                size: 60,

              ),
              SizedBox(height: 60,),
              Text("Rahul Sharma",
              style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 24,
              ),),
              SizedBox(height: 60),
              Text("B.Tech CSE",
              style: TextStyle(fontSize: 12,color: Colors.blue),),
              SizedBox(height: 60),
              Text("Roll No. 10",style: TextStyle(fontSize: 12),),

            ],
          ),
        ),
      ),

    ),
    
  ));
}