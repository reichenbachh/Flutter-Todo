import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:uuid/uuid.dart';
import 'package:dotted_decoration/dotted_decoration.dart';

import "./taskList.dart";
import "./todoHeading.dart";
import './addTaskBtn.dart';
import './date.dart';
import '../models/task.dart';

class taskHome extends StatefulWidget {
  @override
  _taskHomeState createState() => _taskHomeState();
}

class _taskHomeState extends State<taskHome> {
  final List<Task> _taskList = [
    Task(
      taskName: "Wash Shoes",
      taskPriority: "low",
      taskDesc: "Wash shoes for school tommorow",
      taskId: Uuid().v4(),
      taskDate: DateTime.now(),
      taskSatus: false,
    ),
    Task(
      taskName: "Buy new mouse",
      taskPriority: "high",
      taskDesc: "Wash shoes for school tommorow",
      taskId: Uuid().v4(),
      taskDate: DateTime.now(),
      taskSatus: false,
    ),
    Task(
      taskName: "Sign documents",
      taskPriority: "high",
      taskDesc: "Wash shoes for school tommorow",
      taskId: Uuid().v4(),
      taskDate: DateTime.now(),
      taskSatus: false,
    ),
    Task(
      taskName: "fix tap",
      taskPriority: "medium",
      taskDesc: "Wash shoes for school tommorow",
      taskId: Uuid().v4(),
      taskDate: DateTime.now(),
      taskSatus: false,
    )
  ];
  void _addNewTask(String name, String desc, String priority) {
    final priCon = priority.split(".");
    final newTask = Task(
      taskName: name,
      taskDesc: desc,
      taskPriority: priCon[1],
      taskDate: DateTime.now(),
      taskId: Uuid().v4(),
      taskSatus: false,
    );

    setState(() {
      _taskList.add(newTask);
    });
    print(priCon[1].runtimeType);
    print(newTask.taskName);
  }

  void _removeTask(String id) {
    setState(() {
      _taskList.removeWhere((task) => task.taskId == id);
    });
  }
  // var date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Container(
                  height: (MediaQuery.of(context).size.height -
                          MediaQuery.of(context).padding.top) *
                      0.05,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DateWid(),
                      AddBtn(context, _addNewTask, _removeTask)
                    ],
                  ),
                ),
                Container(
                  width: 350,
                  padding: EdgeInsets.only(top: 30),
                  decoration: DottedDecoration(
                    shape: Shape.line,
                    linePosition: LinePosition.bottom,
                  ),
                ),
                Container(
                  height: (MediaQuery.of(context).size.height -
                          MediaQuery.of(context).padding.top) *
                      0.1,
                  child: TodoHead(),
                ),
                Container(
                    height: (MediaQuery.of(context).size.height -
                            MediaQuery.of(context).padding.top) *
                        0.8,
                    child: TaskList(_taskList, _removeTask))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
