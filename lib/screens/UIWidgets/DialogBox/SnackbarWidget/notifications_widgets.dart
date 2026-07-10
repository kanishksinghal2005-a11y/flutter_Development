import 'package:flutter/material.dart';

class NotificationsWidgets extends StatelessWidget {
  const NotificationsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snack bar Widgets"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Student registration successfully"),
                
                )

              );
            }, child: Text("Simple Snackbar")),
            ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content:Row(children: [
                    Icon(Icons.check_circle,color: Colors.white,),
                    Text("Registration Successfully")
                  ]),
                )
                );
            }, child: Text("Icon snackbar")),
            ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content :Text("Record Deleted"),
                  action:SnackBarAction(label: "Undo", onPressed: (){
                    print("Undo Clicked");
                  }))
                );
            }, child: Text("Snackbar with actions")),
          ],
        ),
        
      ),
    );
  }
}