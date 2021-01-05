import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/modal/task_data.dart';
import 'package:todoey_flutter/screens/task_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}
