import 'package:flutter/material.dart';
import '../providers.dart';

class TodoForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: TodoProvider.of(context).addItem,
    );
  }
}
