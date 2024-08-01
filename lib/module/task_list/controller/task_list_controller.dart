
import 'package:flutter/material.dart';
import 'package:flutter_task_laravel/core.dart';
import '../view/task_list_view.dart';

class TaskListController extends State<TaskListView> {
  static late TaskListController instance;
  late TaskListView view;

  @override
  void initState() {
    super.initState();
    instance = this;
    WidgetsBinding.instance.addPostFrameCallback((_) => onReady());
  }

  void onReady() {
    
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
    