import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  //ref our box

  final _myBox = Hive.box('mybox');
  //run if first time open ever
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", true],
      ["Do study", false],
    ];
  }

  //Load data from db
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
