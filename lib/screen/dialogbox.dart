import 'package:flutter/material.dart';

class AddTodo extends StatelessWidget {
  final Function(String) onadd;
  const AddTodo({super.key, required this.onadd});

  @override
  Widget build(BuildContext context) {
    final valcontroller = TextEditingController();
    return AlertDialog(
      title: Text("Add Todo"),
      content: SingleChildScrollView(
        child: ListBody(
          children: [
            Text("What do you wanna do ?"),
            TextField(
              controller: valcontroller,
            )
          ],
        ),
      ),
      actions: [
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Cancel")),
        ElevatedButton(
            onPressed: () {
              onadd(valcontroller.text);
              Navigator.of(context).pop();
            },
            child: Text("Add todo"))
            
      ],
    );
  }
}
