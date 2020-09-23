import 'package:flutter/material.dart';
import 'screens/tasks_screen.dart';
import 'all_data/list_tasks.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => ListTasks(),
      child: MaterialApp(
          home: TaskScreens()),
    );
  }
}

