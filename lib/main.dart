import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/task.dart';
import 'models/data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (context) {
        return Data();
      },
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
