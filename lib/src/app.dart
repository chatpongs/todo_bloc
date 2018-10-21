import 'package:flutter/material.dart';
import './screens/home.dart';
import './providers.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TodoProvider(
      child: MaterialApp(
        title: 'Todo Bloc',
        home: Home(),
      ),
    );
  }
}
