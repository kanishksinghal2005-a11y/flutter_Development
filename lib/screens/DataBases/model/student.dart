class Student {
  int? id;//it can be null 
  String name;
  String course;
  int age;

  //Student constructor
  Student({
    this.id,
    required this.name,
    required his.course,
    required this.age

});
//SQLite Store data in Maps
Map<String,dynamic>toMap(){
  return {
    'id':id,
    'name':name,
    'course':course,
    'age':age
  };
}
//read data from db convert into schema understable by app
factory Student.fromMap(Map<String,dynamic>map){
  return Student(
    id:map['id'],
    name:map['name'],
    course:map['course'],
    age:map['age'],
    );
}

}