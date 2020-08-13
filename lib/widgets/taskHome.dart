import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:dotted_decoration/dotted_decoration.dart';

class taskHome extends StatefulWidget {
  @override
  _taskHomeState createState() => _taskHomeState();
}

class _taskHomeState extends State<taskHome> {
  var date = DateTime.now();

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
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          DateTime.now().day.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 35),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(DateFormat("EEEE").format(DateTime.now())),
                            Text(DateFormat.yMMM().format(DateTime.now()))
                          ],
                        )
                      ],
                    ),
                    Row(
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
                            onPressed: () {},
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
                    ),
                  ],
                ),
                Container(
                  width: 350,
                  padding: EdgeInsets.only(top: 30),
                  decoration: DottedDecoration(
                    shape: Shape.line,
                    linePosition: LinePosition.bottom,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
