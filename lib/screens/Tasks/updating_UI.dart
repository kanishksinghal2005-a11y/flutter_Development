import 'package:flutter/material.dart';

class UpdatingUI extends StatefulWidget {
  const UpdatingUI({super.key});

  @override
  State<UpdatingUI> createState() => _UpdatingUIState();
}

class _UpdatingUIState extends State<UpdatingUI> {
  bool isFollowing=false;
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text(isFollowing ? "Following Profile" : "Flutter Profile",),
        backgroundColor: isFollowing ? Colors.green : Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundColor: Color(0xFFE3F2FD),
                backgroundImage: AssetImage("Assets/profile.png"),
        
              ),
              SizedBox(height: 20,),
              Text("John Doe",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),),
              SizedBox(height: 20,),
              Text("Flutter Developer",style: TextStyle(fontSize:15 ,color: Colors.blue),),
              SizedBox(height: 20,),
              Text("John@example.com",style: TextStyle(fontSize:10 ,color: Colors.grey),),
              SizedBox(height: 20,),
              ElevatedButton.icon(
                onPressed: (){
                
                setState(() {
                  isFollowing = !isFollowing;
                  
                });
                },
                 icon:Icon(isFollowing?Icons.check : Icons.person_add_outlined,),

                  label: Text(isFollowing ?"Following" : "Follow",),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isFollowing? Colors.green : Colors.blue,
                    foregroundColor: Colors.white,
                  ),
          
              
              )
          
          
                                  
          
          
            ],
          ),
        ),
      ),
    );

    
}
}
  
