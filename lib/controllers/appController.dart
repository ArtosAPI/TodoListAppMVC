import 'package:build_store/models/tasksModel.dart';

class TaskController {
  List<Task> _tasks = [
    Task(id: 0, title: 'ashas'),
    Task(id: 1, title: 'asf'),
  ];

  List<Task> get tasks => _tasks;

  void addTask(Task task) {
    _tasks.add(task);
    // Notify the View that the data has changed
    // (using Flutter's setState() or Provider, for example)
  }

  void completeTask(int taskId) {
    //
    _tasks.removeWhere((element) => element.id == taskId);
    // Notify the View that the data has changed
  }
}
