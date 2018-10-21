import 'package:flutter/material.dart';
import '../providers.dart';
import 'package:async/async.dart';

class TodoList extends StatelessWidget {
  final List<String> items = [];
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: StreamZip([TodoProvider.of(context).items]),
        builder: (context, snapshot) {
          print(snapshot.data);
          if (snapshot.data != null) items.add(snapshot.data[0]);
          return items.length == 0
              ? Center(
                  child: Text('No items'),
                )
              : ListBody(
                  children: items
                      .map(
                        (item) => Text(item),
                      )
                      .toList(),
                );
        });
  }
}
