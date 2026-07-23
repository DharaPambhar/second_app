import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold
        ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body:TextField(
        decoration: InputDecoration(
          hintText: "Enter title",
          labelText: "Title"
        ),
      ),
    );
  }
}