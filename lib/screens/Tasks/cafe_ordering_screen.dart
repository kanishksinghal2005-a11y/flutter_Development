import 'package:flutter/material.dart';

class OrderingWindow extends StatefulWidget {
  const OrderingWindow({super.key});

  @override
  State<OrderingWindow> createState() => _OrderingWindowState();
}

class _OrderingWindowState extends State<OrderingWindow> {
  String selectedCategory="Burger";
  int quantity =1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 88, 7, 248),
        title: Text("Smart Cafe",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text("Choose Category",style: TextStyle(fontSize: 14,color: const Color.fromARGB(255, 88, 7, 248),fontWeight: FontWeight.bold),),

            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
        
              ),
              value:selectedCategory, 
              items :[
                DropdownMenuItem(value:"Burger",child:  Text("Burger")),
                DropdownMenuItem(value:"Pizza",child:  Text("Pizza")),
                DropdownMenuItem(value:"Pasta",child:  Text("Pasta")),
                DropdownMenuItem(value:"sandwich",child:  Text("sandwich")),
        
              ], onChanged: (value){
                setState(() {
                  selectedCategory = value!;
                });
              }
        
        ),SizedBox(height: 10,),
                  Text("Selected Item",style: TextStyle(fontSize: 14,color: const Color.fromARGB(255, 88, 7, 248),fontWeight: FontWeight.bold),),
                  
            Card(
              elevation: 5,
              child: ListTile(
                leading: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset("Assets/burger.jpg",height: 90,width: 80,),
                ),
                title: Text("Cheese Burger",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Delicious fresf burger with fresh vegies.",style: TextStyle(fontSize: 12),),
                    Text("RS.120",style: TextStyle(fontSize: 15,color: const Color.fromARGB(255, 2, 179, 8),fontWeight: FontWeight.bold),),

                  ],
                ),
                
                
                trailing: PopupMenuButton<String>( icon: Icon(Icons.more_vert,color: const Color.fromARGB(255, 88, 7, 248),),
                onSelected: (value) {
                  print(value);
                },
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value:"Cheese",
                     child:Row(
                       children: [Icon(Icons.add,color: Colors.deepPurple,size: 20,),SizedBox(width: 5,),
                         Text("Add Cheese"),
                       ],
                     )
                     ),
                     
                      PopupMenuItem(
                    value:"Sauce",
                     child:Row(
                       children: [Icon(Icons.add,color: Colors.red,size: 20),SizedBox(width: 5,),
                         Text("Extra Sauce"),
                       ],
                     )
                     ),
                      PopupMenuItem(
                    value:"Nutriton",
                     child:Row(
                       children: [Icon(Icons.nature_outlined,color: Colors.green,size: 20),SizedBox(width: 5,),
                         Text("Nutrition value"),
                       ],
                     )
                     ),
                      PopupMenuItem(
                    value:"Share",
                     child:Row(
                       children: [Icon(Icons.share,color: Colors.blue,size: 20),SizedBox(width: 5,),
                         Text("Share item"),
                       ],
                     )
                     ),
                ]
                
                )
              
            )
        ),
        SizedBox(height: 10,),
       Text("Quantity",style: TextStyle(fontSize: 14,color: const Color.fromARGB(255, 88, 7, 248),fontWeight: FontWeight.bold),),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(onPressed: (){
              setState(() {
                if(quantity>1){
                  quantity--;
                }
              });


            },
             icon: Icon(Icons.remove_circle),iconSize: 30,),
             SizedBox(width: 5,),
             Text(quantity.toString(),style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(width: 5,),

             IconButton(onPressed: (){
              setState(() {
              quantity++;

              });
             }, icon: Icon(Icons.add_circle),iconSize: 30,)
          ],
        ),
        TextButton.icon(onPressed: (){
          
          ScaffoldMessenger.of(context).showSnackBar(

  SnackBar(

    backgroundColor: Colors.green,

    content: Row(

      children:[

        Icon(
          Icons.check_circle,
          color: Colors.white,
        ),

        SizedBox(width:5),

        Text("Order Placed Successfully!"),
      ],
    ),

    action: SnackBarAction(

      label: "DISMISS",

      textColor: Colors.white,

      onPressed: () {},
    ),
  ),
);
          print("Order Placed");
        },icon: Icon(Icons.shopping_cart,color: Colors.white,), label: Text("Place Order",style: TextStyle(color: Colors.white),),style: TextButton.styleFrom(
          minimumSize: Size(double.infinity, 45),backgroundColor: const Color.fromARGB(255, 88, 7, 248),shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)
          )
        ),),

        TextButton.icon(onPressed: (){
          print("Saved For Later");
        },icon: Icon(Icons.bookmark,color: Color.fromARGB(255, 88, 7, 248)), label: Text("Save For Later",style: TextStyle(color: Color.fromARGB(255, 88, 7, 248)),),style: TextButton.styleFrom(
          minimumSize: Size(double.infinity, 45),backgroundColor: Colors.white,shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),side: BorderSide(
              color: Color.fromARGB(255, 88, 7, 248)
            )),
          
        ),
        ),
        TextButton.icon(onPressed: (){
          print("Selection Has Been Cleared");
        },icon: Icon(Icons.delete,color: Colors.red), label: Text("Clear Selection",style: TextStyle(color: Colors.redAccent),),style: TextButton.styleFrom(
          backgroundColor: Colors.white,shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            ),
          
        ),
        ),
        SizedBox(height:40),

        Divider(),

       // SizedBox(height:5),

        Center(
            child: Text("Order on iPhone Style",style: TextStyle(color: Colors.deepPurple,
            fontWeight: FontWeight.bold,),
             ),
            ),
            ElevatedButton.icon(onPressed: () {},icon: Icon(Icons.apple),

              label: Text("Order on iPhone Style"),

              style: ElevatedButton.styleFrom(

              backgroundColor: Colors.lightBlue,

              foregroundColor: Colors.white,

              minimumSize: Size(double.infinity,55),

              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
    ),
  ),
),
       Card(
  elevation:5,

  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
  ),

  child: Padding(
    padding: EdgeInsets.all(10),

    child: Row(

      children:[

        Icon(
          Icons.celebration,
          color: Colors.orange,
          size:25,
        ),

        SizedBox(width:10),

        Expanded(

          child: Column(

            crossAxisAlignment:
            CrossAxisAlignment.start,

            children:[

              Text(
                "Today's Special",
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                  fontSize:10,
                ),
              ),

              Text("Veg Burger"),

              SizedBox(height:2.5),

              Text(
                "₹99",
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize:10,
                ),
              ),
            ],
          ),
        ),

        CircleAvatar(

          backgroundColor:
          Colors.deepPurple.shade50,

          child: IconButton(

            onPressed:(){},

            icon: Icon(Icons.close),
          ),
        ),
      ],
    ),
  ),
),

        

        ],

        ),
      ),
      
          floatingActionButton:  Padding(
            padding: const EdgeInsets.only(bottom: 180),
            child: SizedBox(height: 80,width: 80,
              child: FloatingActionButton(onPressed: (){},
              backgroundColor: Color.fromARGB(255, 88, 7, 248),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              
              ),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0,left: 10,right: 10,bottom: 5),
                    child: Icon(Icons.restaurant_menu,color: Colors.white,size: 30,),
                  ),
                  Text("Today's\n Special",style: TextStyle(color: Colors.white,fontSize: 10),)

                ],
              ),
              
              
              ),
              
            ),
          ),
          
        
      
    );
  }
}