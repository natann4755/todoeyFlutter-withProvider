import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/all_data/list_tasks.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<ListTasks>(
      builder: (context, taskData, childe){
        return ListView.builder(
          itemBuilder: (context,index){
            return TaskTile(
              title: taskData.tasks[index].title,
              isDone: taskData.tasks[index].isDone,
              checkBoxCallback: (checkBoxValue){
                Provider.of<ListTasks>(context,listen: false).updateTask(taskData.tasks[index]);
              },
              deleteTask: (){
                print("ggggg");
                Provider.of<ListTasks>(context, listen: false).deleteTask(taskData.tasks[index]);
              },
            );
          },
          itemCount: taskData.getTasksCount,
        );
      },
    );
  }
}