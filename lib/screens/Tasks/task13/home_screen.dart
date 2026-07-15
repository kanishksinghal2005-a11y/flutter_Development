import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({super.key});

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  final TextEditingController nameController=TextEditingController();
  final TextEditingController rollController=TextEditingController();

  String selectedCourse="Flutter";
  String updatedCourse="";
  final List<String> courses =[
    "Flutter",
    "Python",
    "Java",
    "AI",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Student Information",style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Icon(Icons.school,size: 100,color: Colors.blue,),
            SizedBox(height: 25,),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "Student Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                
              ),
            ),
            SizedBox(height: 10,),
            TextField(

              controller: rollController,

              keyboardType: TextInputType.number,

              decoration: InputDecoration(

                labelText: "Roll Number",

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),

               

              ),

            ),SizedBox(height: 10,),
            
            DropdownButtonFormField<String>(

              value: selectedCourse,

              decoration: InputDecoration(

                labelText: "Select Course",

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),

              ),

              items: courses.map((course) {

                return DropdownMenuItem(

                  value: course,

                  child: Text(course),

                );

              }).toList(),

              onChanged: (value) {

                setState(() {

                  selectedCourse = value!;

                });

              },

            ),

            const SizedBox(height: 25),

            SizedBox(

              width: double.infinity,

              child: ElevatedButton.icon(

                onPressed: () async {

  final updated = await Navigator.push(

    context,

    MaterialPageRoute(

      builder: (_) => DetailsScreen(

        studentName: nameController.text,

        rollNumber: rollController.text,

        course: selectedCourse,

      ),

    ),

  );

  if (updated != null) {

    setState(() {

      updatedCourse = updated;

    });

  }

},

                icon: const Icon(Icons.open_in_new),

                label: const Text("View Details"),

                style: ElevatedButton.styleFrom(

                  backgroundColor: Colors.blue,

                  foregroundColor: Colors.white,

                  padding: const EdgeInsets.symmetric(vertical: 15),

                  shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(10),

                  ),

                ),

              ),

            ),

            const SizedBox(height: 20),
            Container(

              width: double.infinity,

              padding: const EdgeInsets.all(15),

              decoration: BoxDecoration(

                color: Colors.green.shade50,

                borderRadius: BorderRadius.circular(10),

                border: Border.all(color: Colors.green),

              ),

              child: Column(

                children: [

                  const Text(

                    "Updated Course",

                    style: TextStyle(

                      fontWeight: FontWeight.bold,

                      color: Colors.green,

                    ),

                  ),

                  const SizedBox(height: 8),

                  Text(

                    updatedCourse.isEmpty
                        ? "No Course Updated"
                        : updatedCourse,

                    style: const TextStyle(

                      fontSize: 18,

                      fontWeight: FontWeight.bold,

                      color: Colors.green,

                    ),

                  ),

                ],

              ),

            ),

          ],

        ),

      ),

    );

  }
}

          
            
          