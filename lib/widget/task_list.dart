

import 'package:flutter/cupertino.dart';
import 'package:untitled/models/task.dart';
import 'package:untitled/widget/task_tile.dart';

class TaskList extends StatefulWidget {

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  List<Task> task = [
    Task(name: "buy milk"),
    Task(name: "buy banana"),
    Task(name: "buy onion")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return TaskTile(
          taskTitle: task[index].name,
          isChecked: task[index].isDone,
          checkboxCallback: (checkboxState){
            setState(() {
              task[index].toggleDone();
            });

          }
      );
    },
    itemCount: task.length,
    );
  }
}