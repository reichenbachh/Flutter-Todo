import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateWid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          DateTime.now().day.toString(),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
        ),
        Padding(
          padding: EdgeInsets.only(left: 7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(DateFormat("EEEE").format(DateTime.now())),
              Text(DateFormat.yMMM().format(DateTime.now()))
            ],
          ),
        )
      ],
    );
  }
}
