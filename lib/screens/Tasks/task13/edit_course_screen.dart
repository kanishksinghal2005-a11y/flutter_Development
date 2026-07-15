import 'package:flutter/material.dart';

class EditCourseScreen extends StatefulWidget {
  const EditCourseScreen({super.key});

  @override
  State<EditCourseScreen> createState() => _EditCourseScreenState();
}

class _EditCourseScreenState extends State<EditCourseScreen> {

  late String selectedCourse;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // Receive current course from previous screen
    selectedCourse =
        ModalRoute.of(context)!.settings.arguments as String;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text(
          "Edit Course",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Card(

          elevation: 5,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),

          child: Padding(
            padding: const EdgeInsets.all(20),

            child: Column(

              mainAxisSize: MainAxisSize.min,

              children: [

                const Text(
                  "Select New Course",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),

                const SizedBox(height: 20),

                RadioListTile(
                  title: const Text("Flutter"),
                  value: "Flutter",
                  groupValue: selectedCourse,
                  onChanged: (value) {
                    setState(() {
                      selectedCourse = value!;
                    });
                  },
                ),

                RadioListTile(
                  title: const Text("Java"),
                  value: "Java",
                  groupValue: selectedCourse,
                  onChanged: (value) {
                    setState(() {
                      selectedCourse = value!;
                    });
                  },
                ),

                RadioListTile(
                  title: const Text("Python"),
                  value: "Python",
                  groupValue: selectedCourse,
                  onChanged: (value) {
                    setState(() {
                      selectedCourse = value!;
                    });
                  },
                ),

                RadioListTile(
                  title: const Text("AI"),
                  value: "AI",
                  groupValue: selectedCourse,
                  onChanged: (value) {
                    setState(() {
                      selectedCourse = value!;
                    });
                  },
                ),

                const SizedBox(height: 20),

                SizedBox(

                  width: double.infinity,

                  child: ElevatedButton.icon(

                    icon: const Icon(Icons.check),

                    label: const Text("Save Changes"),

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                    ),

                    onPressed: () {

                      Navigator.pop(
                        context,
                        selectedCourse,
                      );

                    },

                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}