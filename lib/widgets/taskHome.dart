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
  void AddNewTask(String title, String desc) {}
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [DateWid(), AddBtn(context)],
                ),
                Container(
                  width: 350,
                  padding: EdgeInsets.only(top: 30),
                  decoration: DottedDecoration(
                    shape: Shape.line,
                    linePosition: LinePosition.bottom,
                  ),
                ),
                TodoHead(),
                TaskList(_taskList)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
