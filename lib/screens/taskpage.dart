import 'package:flutter/material.dart';
import 'package:mitra/widgets/todo.dart';
class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(""),
        backgroundColor: Colors.grey[100],
        elevation: 0.0,
        ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "enter your task...",
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                    fontSize: 26,
                    color: Color(0XFF211551)
                  ),
                )
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "descriptiion",
                  border: InputBorder.none
                ),
              ),
              Todo()

        ],
      )
    )
      )

      );

  }
}
