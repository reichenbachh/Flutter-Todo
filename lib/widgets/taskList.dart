import 'package:flutter/material.dart';

import '../models/task.dart';

class TaskList extends StatelessWidget {
  Color getColor(pri) {
    var col;
    if (pri == "high") {
      col = Colors.red;
    }
    if (pri == "medium") {
      col = Colors.orange;
    }
    if (pri == "low") {
      col = Colors.blue;
    }
    return col;
  }

  @override
  final List<Task> taskList;
  TaskList(this.taskList);
  Widget build(BuildContext context) {
    return Column(
      children: taskList.map((task) {
        return Card(
          color: getColor(task.taskPriority),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      task.taskPriority,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      task.taskName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      task.taskDesc,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Radio(
                  value: false,
                  activeColor: Colors.white,
                )
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
