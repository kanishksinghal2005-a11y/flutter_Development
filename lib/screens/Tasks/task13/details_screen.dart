import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final String studentName;
  final String rollNumber;
  final String course;

  const DetailsScreen({
    super.key,
    required this.studentName,
    required this.rollNumber,
    required this.course,
  });

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {

  late String selectedCourse;

  @override
  void initState() {
    super.initState();
    selectedCourse = widget.course;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text(
          "Student Details",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            Card(
              elevation: 5,

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),

              child: Padding(
                padding: const EdgeInsets.all(15),

                child: Column(

                  children: [

                    const Text(
                      "Student Details",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),

                    const SizedBox(height: 20),

                    ListTile(
                      leading: const CircleAvatar(
                        child: Icon(Icons.person),
                      ),
                      title: const Text("Name"),
                      subtitle: Text(widget.studentName),
                    ),

                    ListTile(
                      leading: const CircleAvatar(
                        child: Icon(Icons.badge),
                      ),
                      title: const Text("Roll Number"),
                      subtitle: Text(widget.rollNumber),
                    ),

                    ListTile(
                      leading: const CircleAvatar(
                        child: Icon(Icons.school),
                      ),
                      title: const Text("Course"),
                      subtitle: Text(
                        selectedCourse,
                        style: const TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,

              child: ElevatedButton.icon(

               onPressed: () async {

  final updated = await Navigator.pushNamed(
    context,
    '/editCourse',
    arguments: selectedCourse,
  );

  if (updated != null) {
    setState(() {
      selectedCourse = updated as String;
    });
  }

},

                icon: const Icon(Icons.edit),

                label: const Text("Edit Course"),

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
              ),
            ),

            const SizedBox(height: 15),

            SizedBox(
              width: double.infinity,

              child: OutlinedButton.icon(

                onPressed: () {

                  Navigator.pop(
                    context,
                    selectedCourse,
                  );

                },

                icon: const Icon(Icons.arrow_back),

                label: const Text("Go Back"),

              ),
            ),
          ],
        ),
      ),
    );
  }
}