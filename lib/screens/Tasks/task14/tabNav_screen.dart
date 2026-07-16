import 'package:flutter/material.dart';

class TabnavScreen extends StatelessWidget {
  const TabnavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tabbar Navigation"),
          backgroundColor: Colors.green,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.search), text: "Search"),
              Tab(icon: Icon(Icons.person), text: "Profile"),
              Tab(icon: Icon(Icons.settings), text: "Settings"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text(
                "🏠 Home Screen",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                "🪢 Search Screen",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Padding(
                    //padding: const EdgeInsets.only(left: 75.0,top: 20),
                   ClipRRect(child: Image.asset("Assets/profile.png",height: 150,width: 150,)),
                //),
                Divider(),
                Text("Name : Kanishk singhal",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25),),Divider(),
                Text("Age: 21",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25),),Divider(),
                Text("Gender: Male",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25),),Divider(),
                //Text("Email: kanishksinghal2007@gmail.com",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25),),
              
              
              
              ],
                   ),
            ),
          ),
            Center(
      child:Text(
        "⚙ Settings Screen",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ), 
    ),
          ],
        ),
      ),
    );
  }
}