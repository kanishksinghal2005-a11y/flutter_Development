import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomSheet widget"),
        backgroundColor: Colors.blue,

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SelectableText(
                "poierjvorifjirouhgiurhgiurthgiurghirughiurhgoiwrhgoirghoituhgtuhgitughtu g "
               " kjgntrikgntkngktjngjktrngktjnnktjntjnktjnnet"
              
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              showModalBottomSheet(
                context: context,
               builder: (context){
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text("Choose an Option",style: TextStyle(fontSize: 20)),
                      SizedBox(height: 20,),
                      ListTile(
                        leading: Icon(Icons.camera_alt,color:Colors.blue),
                        title: Text("Camera"),
                        onTap: (){
                          print("Camera selected");
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.browse_gallery_sharp,color:Colors.blue),
                        title: Text("Gallery"),
                        onTap: (){
                          print("Gallary selected");
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.share,color:Colors.blue),
                        title: Text("Share"),
                        onTap: (){
                          print("Share selected");
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.cancel,color:Colors.blue),
                        title: Text("Cancel"),
                        onTap: (){
                          print("Cancel selected");
                          Navigator.pop(context);
                        },
                      )
                    ],
                  ),
                );
            
            
               }
               );
            }, child: Text("Bottomsheet widget")),
          ],
        ),
        
      ),
    );
  }
}