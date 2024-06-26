import "package:flutter/material.dart";
import "package:flutter_boot/screen/dialogbox.dart";
import "package:flutter_boot/widgets/todowidget.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Todo> todos = [
    Todo(
      textval: "Go to sleep",
    ),
    Todo(
      textval: "GTA 5 kalikaaa",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "To-do App",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListView.builder(
                shrinkWrap: true,
                itemCount: todos.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: todos[index],
                    onDoubleTap: () {
                      setState(() {
                        todos.removeAt(index);
                      });
                    },
                  );
                })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addtodoitems,
        child: const Icon(Icons.add),
      ),
    );
  }

  void _addtodoitems() {
    showDialog<String>(
        context: context,
        builder: (context) {
          return AddTodo(
            onadd: (String val) {
              setState(() {
                todos.add(Todo(textval: val));
              });
            },
          );
        });
  }
}
