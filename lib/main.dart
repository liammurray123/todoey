import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Model Imports
import 'package:todoey_flutter/models/list_class.dart';

// Screen Imports
import 'screens/tasks_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskList(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
