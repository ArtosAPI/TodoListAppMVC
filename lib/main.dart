import 'package:flutter/material.dart';
import 'package:build_store/views/mainPage_view.dart';
import 'package:build_store/controllers/appController.dart';
import 'package:build_store/models/tasksModel.dart';

void main() {
  final taskController = TaskController();
  runApp(MyApp(taskController: taskController));
}

class MyApp extends StatelessWidget {
  final TaskController taskController;
  static late String title;

  const MyApp({super.key, required this.taskController});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Hello!'),
            ),
            body: TaskListView(taskController)));
  }
}
