import 'dart:io';

import 'package:flutter/material.dart';

class ChesseBurgerCard extends StatelessWidget {
  const ChesseBurgerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: 300,
            height: 700,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(color: Colors.black,blurRadius: 5,offset: Offset(2,2),),

              ]
              
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  ClipRRect(borderRadius: BorderRadius.circular(15),
                  child: Image.asset("Assets/burger.jpg",height: 250,width: double.infinity,fit: BoxFit.cover,),),
                  SizedBox(height: 20,),
                  Text("CHEESE BURGER",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
                  SizedBox(height: 20,),
                  Text("Fresh & Delicious Burger",style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                  Text(" with cheese",style: TextStyle(color: Colors.blueGrey,fontSize: 20),),SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Icon(Icons.star,color: const Color.fromARGB(255, 249, 228, 43),),
                        SizedBox(width:10,),
                        Text("4.8  (250 Reviews)",style:TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold))
                ]),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.currency_rupee,color: Colors.orange,), SizedBox(width: 5,),Text("249",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
                    color: Colors.orange),)
                  ],
                ),
                SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){
                    print("Order Placed");
                    
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),minimumSize: Size(200, 50)
                  ),
                  
                   child: Text("Order Now"))              
                                ]
                    ,
                  )


                  
                  
                ,
              ),
            ),
          ),
        ),
      );

    
  }
}