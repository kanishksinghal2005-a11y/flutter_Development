import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  const TextFormFieldWidget({super.key});

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
final GlobalKey<FormState> formkey= GlobalKey<FormState>();
  TextEditingController nameController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("TextFormField Widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: "Name",
                  hintText: "Enter your name",
                  prefix: Icon(Icons.person),
                  border: OutlineInputBorder(),

                ),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return "Please Enter the name";
                  }
                  return null;
                },
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                if(formkey.currentState!.validate()){
                  print("Name: ${nameController}");
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Form Submitted Successfull"))
                  );
                }
              }, child: Text("Submit"))
            ],
          )),
      )
    );
  }
}