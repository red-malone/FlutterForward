import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  final String textval;
  const Todo({super.key, required this.textval});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  bool? action = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: action,
        onChanged: (bool? value) {
          setState(() {
            action = value;
          });

          print(action);
        },
      ),
      title: Text(widget.textval),
      
    );
  }
}
