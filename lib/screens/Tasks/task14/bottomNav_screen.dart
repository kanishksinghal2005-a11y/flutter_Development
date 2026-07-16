import 'package:flutter/material.dart';

class BottomnavScreen extends StatefulWidget {
  const BottomnavScreen({super.key});

  @override
  State<BottomnavScreen> createState() => _BottomnavScreenState();
}

class _BottomnavScreenState extends State<BottomnavScreen> {
  int selectedindex=0;
  final List<Widget> pages =[
    Center(
      child: Text("🏠 Home Screen",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
    ),
     Center(
      child: Text("🪢 Search Screen",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
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
      child: Text("⚙ Settings Screen",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
    )

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Bottom Navigation Bar",style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedindex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
        setState(() {
          selectedindex=index;
        });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"
          ),
        ]),
        body: pages[selectedindex],

    );
  }
}