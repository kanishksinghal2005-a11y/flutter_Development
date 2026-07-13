import 'package:flutter/material.dart';

class ListViewTask extends StatelessWidget {
  const ListViewTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text("ListView Example",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.green,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView(
          children: [
            Card(
              elevation: 5,
              child: ListTile(
                leading: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset("Assets/burger.jpg",height: 70,width: 60,),
                ),
                title: Text("Cheese Burger",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                subtitle: Text("Rs.149"),
                trailing: ElevatedButton(onPressed: (){
                  print("Item Added to the cart");
                }, child: Icon(Icons.add)),
              
            )
        ),
        Divider(),
        Card(
              elevation: 5,
              child: ListTile(
                leading: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset("Assets/pizza.jpeg",height: 70,width: 60,),
                ),
                title: Text("Veg pizza",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                subtitle: Text("Rs.199"),
                trailing: ElevatedButton(onPressed: (){
                  print("Item Added to the cart");
                }, child: Icon(Icons.add)),
              
            )
        ),
        Divider(),
        Card(
              elevation: 5,
              child: ListTile(
                leading: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset("Assets/pasta.jpeg",height: 70,width: 60,),
                ),
                title: Text("Pasta",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                subtitle: Text("Rs.249"),
                trailing: ElevatedButton(onPressed: (){
                  print("Item Added to the cart");
                }, child: Icon(Icons.add)),
              
            )
        ),
        Divider(),
        Card(
              elevation: 5,
              child: ListTile(
                leading: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset("Assets/sandwich.jpeg",height: 70,width: 60,),
                ),
                title: Text("Sandwich",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                subtitle: Text("Rs.99"),
                trailing: ElevatedButton(onPressed: (){
                  print("Item Added to the cart");
                }, child: Icon(Icons.add)),
              
            )
        ),
        Divider(),
        Card(
              elevation: 5,
              child: ListTile(
                leading: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset("Assets/colddrink.webp",height: 70,width: 60,),
                ),
                title: Text("Cold Drink",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                subtitle: Text("Rs.49"),
                trailing: ElevatedButton(onPressed: (){
                  print("Item Added to the cart");
                }, child: Icon(Icons.add)),
              
            )
        ),
        Divider(),
        Card(
              elevation: 5,
              child: ListTile(
                leading: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset("Assets/icecreame.jpeg",height: 70,width: 60,),
                ),
                title: Text("Ice Creame",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                subtitle: Text("Rs.79"),
                trailing: ElevatedButton(onPressed: (){
                  print("Item Added to the cart");
                }, child: Icon(Icons.add)),
              
            )
        ),
        Divider(),
        Card(
              elevation: 5,
              child: ListTile(
                leading: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset("Assets/cake.jpg",height: 70,width: 60,),
                ),
                title: Text("Chocolate cake",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                subtitle: Text("Rs.399"),
                trailing: ElevatedButton(onPressed: (){
                  print("Item Added to the cart");
                }, child: Icon(Icons.add)),
              
            )
        ),
        Divider(),
        Card(
              elevation: 5,
              child: ListTile(
                leading: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset("Assets/wrap.jpeg",height: 70,width: 60,),
                ),
                title: Text("Wrap",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                subtitle: Text("Rs.149"),
                trailing: ElevatedButton(onPressed: (){
                  print("Item Added to the cart");
                }, child: Icon(Icons.add)),
              
            )
        ),
        Divider(),
        ],
        ),
      ),
    );
  }
}