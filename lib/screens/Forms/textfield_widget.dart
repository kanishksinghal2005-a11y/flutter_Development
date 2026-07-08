import 'package:flutter/material.dart';

class TextfieldWidget extends StatefulWidget {
  const TextfieldWidget({super.key});

  @override
  State<TextfieldWidget> createState() => _TextfieldWidgetState();
}

class _TextfieldWidgetState extends State<TextfieldWidget> {
 bool secureText =true;
 TextEditingController nameController = TextEditingController(); 
 TextEditingController passwordController = TextEditingController(); 

String? _passwordError = "";
String? _nameError = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("TextField widget"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                                errorText: _nameError,

                prefix: Icon(Icons.person,color: Colors.blue,),
                hintText: "Enter your name",
                border: OutlineInputBorder(),
                labelText: "name",
               // border: InputBorder.none
               //border : UnderlineInputBorder(),
               fillColor: Colors.blueGrey,
               filled: true
                
              ),
              maxLength: 20,//how many characters you can add
            
             // keyboardType: TextInputType.number,
              //keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20,),
             TextField(
              controller: passwordController,
              
              decoration: InputDecoration(
                errorText: _passwordError,
                
                hintText: "Enter your password",
                border: OutlineInputBorder(),
                labelText: "Password",
                suffixIcon: IconButton(onPressed: (

                ){
                  setState(() {
                    secureText = !secureText;
                  });
                },
                
                 icon: Icon(secureText?Icons.visibility:Icons.visibility_off)),
                
               // border: InputBorder.none
               //border : UnderlineInputBorder(),
               fillColor: Colors.blueGrey,
               filled: true
                
              ),
              maxLength: 20,//how many characters you can add
            obscureText: secureText,
             // keyboardType: TextInputType.number,
              //keyboardType: TextInputType.emailAddress,
            ),
            TextField(
              decoration: InputDecoration(
                prefix: Icon(Icons.person,color: Colors.blue,),
                hintText: "Enter your Address",
                border: OutlineInputBorder(),
                labelText: "Address",
               // border: InputBorder.none
               //border : UnderlineInputBorder(),
               fillColor: Colors.blueGrey,
               filled: true
                
              ),
              maxLines: 5,//how many characters you can add
            

            ),
                        SizedBox(height: 20,),
                        ElevatedButton(
  onPressed: () {
    print("Name : ${nameController.text}");
    print("Password : ${passwordController.text}");

    setState(() {
      if (nameController.text.isEmpty &&
          passwordController.text.length < 6) {
        _nameError = "Name cannot be blank";
        _passwordError = "Password should not be less than 6 characters";
      }
    });
  },
  child: const Text("Submit"),
)
                          
                          

          ],
        ),
      )
    );
  }
}