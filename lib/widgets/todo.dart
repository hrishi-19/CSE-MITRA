import 'package:flutter/material.dart';
class Todo extends StatefulWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("add Task"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Enter Title",
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter desc"
            ),
          ),
          SizedBox(height: 20,),
          FlatButton(onPressed: (){},
            color: Colors.green,
          child: Text("ADD"),)
        ],
      ),
    );
  }
}
