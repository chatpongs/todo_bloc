import 'package:flutter/material.dart';
import '../widgets/todo_form.dart';
import '../widgets/todo_list.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Text(
              'Add Item',
              style: Theme.of(context).textTheme.display1,
            ),
            TodoForm(),
            Container(
              padding: EdgeInsets.all(20.0),
            ),
            Text(
              'Item List',
              style: Theme.of(context).textTheme.display1,
            ),
            TodoList(),
          ],
        ),
      ),
    );
  }
}
