import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:todayto_app/models/task_data.dart';

import '../models/task_data.dart';
class AddTaskScreen extends StatelessWidget {
  final Function addTaskCalback;
  AddTaskScreen(this.addTaskCalback);

  @override
  Widget build(BuildContext context) {
    String?  newTaskTitle;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30,color: Colors.black,
              fontWeight: FontWeight.bold)),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText){
              newTaskTitle=newText;
            },
          ),
          SizedBox(height: 30),
          TextButton(onPressed: (){
            Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle!);
            Navigator.pop(context);
          }, child: Text('Add'),
            style: TextButton.styleFrom(
              backgroundColor: Colors.black,
              primary: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
