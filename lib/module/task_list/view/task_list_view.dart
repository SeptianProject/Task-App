
import 'package:flutter/material.dart';
import 'package:flutter_task_laravel/core.dart';
import '../controller/task_list_controller.dart';

class TaskListView extends StatefulWidget {
  const TaskListView({Key? key}) : super(key: key);

  Widget build(context, TaskListController controller) {
  controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("TaskList"),
          actions: const [],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<TaskListView> createState() => TaskListController();
}
    