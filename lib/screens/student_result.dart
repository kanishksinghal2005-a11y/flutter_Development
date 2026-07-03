void main(){
  String studentName="john doe";
  int rollNumber= 101;
  String course="BCA";
  int semester= 3;
  int marksInSubject1= 85;
  int marksInSubject2= 78;
  int marksInSubject3= 91;

  int TotalMarks= marksInSubject1 + marksInSubject2 + marksInSubject3;
  double TotalAvg=  (TotalMarks) / 3 ;
  double percentage= (TotalMarks /300) *100;

  bool isPassed = percentage >=40;
  
  marksInSubject1= marksInSubject1 + 5;
 print("Student Result");


print("Student Name : $studentName");
print("Roll Number  : $rollNumber");
print("Course       : $course");
print("Semester     : $semester");

print("");

print("Subject 1 : $marksInSubject1");
print("Subject 2 : $marksInSubject2");
print("Subject 3 : $marksInSubject3");

print("");

print("Total Marks : $TotalMarks");
print("Average     : $TotalAvg");
print("Percentage  : $percentage");

print("Passed : $isPassed");

}