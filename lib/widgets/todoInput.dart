import 'package:flutter/material.dart';

class TodoInput extends StatefulWidget {
  @override
  _TodoInputState createState() => _TodoInputState();
}

enum priorities { high, medium, low }

class _TodoInputState extends State<TodoInput> {
  String descVal;
  final titleCtrl = TextEditingController();
  final descCtrl = TextEditingController();

  priorities lowPriorty = priorities.low;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 5),
                child: TextField(
                  controller: titleCtrl,
                  decoration: InputDecoration(labelText: "Enter task title"),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 5),
                child: TextField(
                  controller: descCtrl,
                  decoration:
                      InputDecoration(labelText: "Enter task description "),
                ),
              ),
              Center(
                child: Text(
                  "Choose a priority level",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text("High"),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Radio(
                          activeColor: Theme.of(context).primaryColor,
                          value: priorities.high,
                          groupValue: lowPriorty,
                          onChanged: (priorities value) {
                            setState(() {
                              lowPriorty = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Medium"),
                      Radio(
                        activeColor: Theme.of(context).primaryColor,
                        value: priorities.medium,
                        groupValue: lowPriorty,
                        onChanged: (priorities value) {
                          setState(() {
                            lowPriorty = value;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Low"),
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Radio(
                          activeColor: Theme.of(context).primaryColor,
                          value: priorities.low,
                          groupValue: lowPriorty,
                          onChanged: (priorities value) {
                            setState(() {
                              lowPriorty = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: FlatButton(
                      onPressed: () {},
                      color: Colors.teal,
                      child: Text(
                        "Add task",
                        style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1.color),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
