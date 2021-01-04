import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0)
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
               ),
             ),
            ),
            Container(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                )
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: FlatButton(onPressed: (){},
                child: Text("Add",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0
                ),
                ),
                color: Colors.lightBlueAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
