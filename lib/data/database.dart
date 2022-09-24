import 'package:hive_flutter/hive_flutter.dart';

class TodoDataBase {
  List toDoList = [];

  // reference out box
  final _myBox = Hive.box('myBox');

  // run this method init method
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Exercise", false],
    ];
  }

  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
