import 'package:flutter/material.dart';
import 'package:build_store/controllers/appController.dart';
import 'package:build_store/models/tasksModel.dart';

class TaskListView extends StatefulWidget {
  final TaskController controller;
  String title = '';
  TaskListView(this.controller);

  @override
  State<TaskListView> createState() => _TaskListViewState();
}

class _TaskListViewState extends State<TaskListView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Expanded(
            child: TextField(
              onChanged: (value) {
                setState(() {
                  widget.title = value;
                });
              },
            ),
          ),
          FilledButton(
            style: ButtonStyle(shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.zero))),
              onPressed: () {
                setState(() {
                  widget.controller.addTask(Task(
                      id: widget.controller.tasks.last.id! + 1,
                      title: widget.title));
                });
              },
              child: const Text('Click me!')),
        ]),
        Expanded(
          child: ListView.builder(
            itemCount: widget.controller.tasks.length,
            itemBuilder: (context, index) {
              final task = widget.controller.tasks[index];
              return ListTile(
                title: Text(task.title + ' ' + task.id.toString()),
                leading: Checkbox(
                  value: task.isCompleted,
                  onChanged: (newValue) {
                    setState(() {
                      widget.controller.completeTask(task.id!);
                    });
                  },
                ),
              );
            },
          ),
        ),
      ]),
    );
  }
}
