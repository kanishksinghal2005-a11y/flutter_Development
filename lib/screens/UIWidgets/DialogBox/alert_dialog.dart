import 'package:flutter/material.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog widgets"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                showDialog(
                  context: context, 
                  builder: (context){
                    return AlertDialog(
                      icon: Icon(Icons.warning_amber_rounded,size:60,color:Colors.amber),
                      title: Text("Delete Record"),
                      content: Text("Are you sure to delete this record?"),
                      actions: [
                        TextButton(onPressed: (){
                          print("Delete Cancelled");
                          Navigator.pop(context);
                        }, child: Text("Cancel")),
                        ElevatedButton(onPressed: (){
                          print("Record deleted");
                          Navigator.pop(context);
                        }, child: Text("delete"))
                      ],
              
                    );
                  }
                  );
              }, child: Text("Call Alert Dialog Box")),
              ElevatedButton(onPressed: (){
                showDialog(
                  context: context, 
                  builder: (context){
                    return SimpleDialog(
                      title: Text("Select language"),
                      children: [
                        SimpleDialogOption(
                          onPressed: (){
                            print("English selected");
                          },
                          child: Text("English"),
                          
                        ),
                        SimpleDialogOption(
                          onPressed: (){
                            print("Hindi selected");
                          },
                          child: Text("Hindi"),
                          
                        ),
                        SimpleDialogOption(
                          onPressed: (){
                            print("French selected");
                          },
                          child: Text("French"),
                          
                        ),
                        SimpleDialogOption(
                          onPressed: (){
                            print("Russian selected");
                          },
                          child: Text("Russian"),
                          
                        ),
                      ],
                    );
                  }
              );}, child: Text("call simple Dialog box "))
            ],
          ),
        ),
      ),
    );
  }
}