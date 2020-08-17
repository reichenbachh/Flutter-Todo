import 'package:flutter/material.dart';

class Task {
  final String taskName;
  final String taskPriority;
  final String taskDesc;
  final DateTime taskDate;
  final String taskId;
  final bool taskSatus;

  Task(
      {@required this.taskName,
      @required this.taskDesc,
      @required this.taskPriority,
      @required this.taskDate,
      @required this.taskId,
      @required this.taskSatus});
}
