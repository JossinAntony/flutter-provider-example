import 'package:flutter/material.dart';

class Student{
  String name;
  int rollNo;

  Student({this.name, this.rollNo});
}

class StudentModel extends ChangeNotifier{
  List<Student> studentList = [];
  addToStudentModel(){
    studentList.add(Student(name: 'Demo Student', rollNo: 1));
  }
  notifyListeners();
}

