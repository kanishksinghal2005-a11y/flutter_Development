import 'package:flutter/material.dart';

class StudentRegistrationForm extends StatefulWidget {
  const StudentRegistrationForm({super.key});

  @override
  State<StudentRegistrationForm> createState() => _StudentRegistrationFormState();
}

class _StudentRegistrationFormState extends State<StudentRegistrationForm> {
  final TextEditingController nameController = TextEditingController();
  //final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController rollController = TextEditingController();
  final TextEditingController courseController = TextEditingController();
  final TextEditingController cityController = TextEditingController();

  String ? nameError="";
  String ? emailError="";
  String ? phoneError="";
  String ? rollError="";
  String ? courseError="";
  String ? cityError="";
  void resetForm() {
  setState(() {
    nameController.clear();
    emailController.clear();
    numberController.clear();
    rollController.clear();
    courseController.clear();
    cityController.clear();

  

    
  });
}
Widget detailRow(IconData icon, String title, String value) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 6),
    child: Row(
      children: [

        Icon(
          icon,
          color: Colors.blueGrey,
          size: 22,
        ),

        SizedBox(width: 15),

        SizedBox(
          width: 70,
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),

        Text(":"),

        SizedBox(width: 10),

        Expanded(
          child: Text(value),
        ),
      ],
    ),
  );
}
void showSuccessDialog() {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),

        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            // Success Icon
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.green.shade100,
              child: Icon(
                Icons.check,
                size: 45,
                color: Colors.green,
              ),
            ),

            SizedBox(height: 15),

            // Title
            Text(
              "Student Registered\nSuccessfully!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.green.shade700,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

            // Details
            detailRow(Icons.person, "Name", nameController.text),
            detailRow(Icons.email, "Email", emailController.text),
            detailRow(Icons.phone, "Mobile", numberController.text),
            detailRow(Icons.badge, "Roll No", rollController.text),
            detailRow(Icons.menu_book, "Course", courseController.text),
            detailRow(Icons.location_on, "City", cityController.text),

            Divider(),

            SizedBox(
              width: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "OK",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      );
    },
  );
}
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Student Registration ",style: TextStyle(color: Colors.white,fontSize: 20),),centerTitle: true,
        leading: IconButton(onPressed: (){
          
            Navigator.pop(context);
          
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
         ListView(
          children: [
          Center(child: ClipRRect(child: Image.asset("Assets/student.jpg",height: 150,width: 150,))),SizedBox(height: 5,),
          Center(child: Text("Student Registration",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),)),//SizedBox(height: 2,),
          Center(child: Text("Please fill in the details to register",style: TextStyle(color: Colors.blueGrey,fontSize: 15),)),SizedBox(height: 7,),
          TextField(
            controller: nameController,
            
            decoration: InputDecoration(
              errorText: nameError ,
              prefixIcon: Icon(Icons.person),
              hintText: "Enter your Name",
              border: OutlineInputBorder(),
              labelText: "Name",

            ),

          ),SizedBox(height: 7,),
          TextField(
            controller: emailController,
            
            decoration: InputDecoration(
              errorText: emailError ,
              prefixIcon: Icon(Icons.phone),
              hintText: "Enter your Email",
              border: OutlineInputBorder(),
              labelText: "Email",

            ),

          ),SizedBox(height: 7,),
           TextField(
            controller: numberController,
            
            decoration: InputDecoration(
              errorText: phoneError ,
              prefixIcon: Icon(Icons.phone),
              hintText: "Enter your Mobile Number",
              border: OutlineInputBorder(),
              labelText: "Mobile Number",

            ),

          ),SizedBox(height: 7,),
           TextField(
            controller: rollController,
            
            decoration: InputDecoration(
              errorText: rollError ,
              prefixIcon: Icon(Icons.badge),
              hintText: "Enter your Roll number",
              border: OutlineInputBorder(),
              labelText: "Roll number",

            ),

          ),SizedBox(height: 7,),
           TextField(
            controller: courseController,
            
            decoration: InputDecoration(
              errorText: courseError ,
              prefixIcon: Icon(Icons.book),
              hintText: "Enter your Course",
              border: OutlineInputBorder(),
              labelText: "Course",

            ),

          ),SizedBox(height: 7,),
           TextField(
            controller: cityController,
            
            decoration: InputDecoration(
              errorText: cityError ,
              prefixIcon: Icon(Icons.location_city),
              hintText: "Enter your City Name",
              border: OutlineInputBorder(),
              labelText: "City",

            ),

          ),SizedBox(height: 7,),
          SizedBox(height: 40,//width: 10,
            child: ElevatedButton.icon(onPressed: resetForm
              
            ,icon: Icon(Icons.reset_tv,color: Colors.red,), label: Text("Reset",style: TextStyle(color: Colors.red),),style: ElevatedButton.styleFrom(
              elevation: 5,backgroundColor: Colors.white,minimumSize: Size(80, 40),padding: EdgeInsets.symmetric(horizontal: 10),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),side: BorderSide(color: Colors.black)),
            ),
          ),
          SizedBox(height: 7,),
          SizedBox(height: 40,//width: 10,
            child: ElevatedButton.icon(onPressed: (){
              print("Name:${nameController.text}");
              print("Email:${emailController.text}");
              print("Phone number:${numberController.text}");
              print("Roll number:${rollController.text}");
              print("Course:${courseController.text}");
              print("City:${cityController.text}");
              setState(() {
                if(nameController.text.isEmpty&&emailController.text.isEmpty&&numberController.text.isEmpty&&rollController.text.isEmpty&&cityController.text.isEmpty&&courseController.text.isEmpty){
                  nameError="Please Enter your Name";
                  emailError="Please Enter your Email";
                  phoneError="Please Enter your 10 digit Mobile number";
                  rollError="Please Enter your Roll number";
                  courseError="Please Enter your Course name";
                  cityError="Please Enter your City name";
                }
                else{
                  showSuccessDialog();
                }
              });
            },icon: Icon(Icons.telegram,color: Colors.white,), label: Text("Submit",style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(
              elevation: 5,backgroundColor: Colors.blueAccent,minimumSize: Size(80, 40),padding: EdgeInsets.symmetric(horizontal: 10),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),side: BorderSide(color: Colors.black))
            ),
          ),

        ],),
      ),
    );
  }
}