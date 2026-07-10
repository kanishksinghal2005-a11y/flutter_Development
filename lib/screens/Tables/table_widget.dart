import 'package:flutter/material.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Table"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Table(
          border: TableBorder.all(
            color: Colors.black,
            width: 1,
          ),
          children: [

            // Heading Row
            TableRow(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Subject",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Marks",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Grade",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),

            // Data Rows
            buildRow("Flutter", "95", "A"),
            buildRow("Java", "90", "B"),
            buildRow("Python", "85", "A"),
            buildRow("Android", "80", "B"),
          ],
        ),
      ),
    );
  }

  // Function to create each row
  static TableRow buildRow(
      String subject,
      String marks,
      String grade,
      ) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(subject),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(marks),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(grade),
        ),
      ],
    );
  }
}