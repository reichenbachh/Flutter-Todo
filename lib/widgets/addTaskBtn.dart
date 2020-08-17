import 'package:flutter/material.dart';
import './todoInput.dart';

class AddBtn extends StatelessWidget {
  final BuildContext appContext;
  AddBtn(this.appContext);
  void _startAddTask(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return TodoInput();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Theme.of(context).primaryColor,
          ),
          child: IconButton(
            iconSize: 20,
            padding: EdgeInsets.all(1),
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: () {
              _startAddTask(appContext);
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            "Add a Task",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
