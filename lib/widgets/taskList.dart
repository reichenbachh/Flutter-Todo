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
    return Container(
      height: 500,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            color: getColor(taskList[index].taskPriority),
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
                        taskList[index].taskPriority,
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1.color,
                        ),
                      ),
                      Text(
                        taskList[index].taskName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).textTheme.bodyText1.color,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        taskList[index].taskDesc,
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1.color,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {},
                      ),
                      Radio(
                        value: false,
                        activeColor: Colors.white,
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
        itemCount: taskList.length,
      ),
    );
  }
}
