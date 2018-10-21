import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class TodoProvider extends InheritedWidget {
  final child;
  final _items = BehaviorSubject<String>();

  Stream<String> get items => _items.stream;
  Function(String) get addItem => _items.add;

  TodoProvider({this.child}): super(child: child);
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static TodoProvider of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(TodoProvider);
  }

  dispose(){
    _items.close();
  }
}