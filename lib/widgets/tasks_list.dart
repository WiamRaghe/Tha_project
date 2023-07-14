import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:today/main.dart';
//import '../models/task.dart';
import '../models/task_data.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {


    return Consumer<TaskData>(

   builder: (context,taskdata,child) {
     return   ListView.builder(
       itemCount:taskdata.tasks.length,
       itemBuilder:(context,index){
         return TaskTile(
             isChecked:taskdata. tasks [index].isDone,
             taskTitle:taskdata. tasks[index].name,
             checkboxChange :( newValue){
             taskdata.updateTask(taskdata.tasks[index]);
             },
             listTileDlete:(){
            taskdata.deleteTask(taskdata.tasks[index]);
             }
         );
       }, );
    },

    );

  }
}

