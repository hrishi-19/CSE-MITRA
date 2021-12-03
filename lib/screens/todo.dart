import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class TodoHome extends StatelessWidget {
  const TodoHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple[200],
        body:Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(
                      bottom: 35
                  ),
                  color: Colors.purple,
                  child:Text("hello")
              ),
              Text("add")
            ],
          ),
        )
    );
  }
}
