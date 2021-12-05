import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mitra/widgets/task.dart';
class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);



  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Stack(
                children:[
                  Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Expanded(child: TextField(
                                onSubmitted: (value){
                                  print(value);
                                },
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                                decoration: InputDecoration(
                                    hintText: "enter Task title",
                                    border: InputBorder.none
                                ),
                              ))
                            ],
                          ),
                        ),
                        SizedBox(height: 25),
                        TextField(
                          decoration: InputDecoration(
                              hintText: "enter the description",
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(horizontal: 24)
                          ),
                        ),
                        Todo(text: "create your first task",isDone:true ),
                        Todo(text:"task done",isDone:true),
                        Todo(text:"hwllo",isDone:true),
                        Todo(text:"adp",isDone:false ),
                      ]
                  ),
                  Positioned(
                    bottom: 10,
                    right: 0.0,
                    child: FloatingActionButton(
                      backgroundColor: Colors.red,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder:(context)=>TaskPage()
                        ));
                      },
                      child: Icon(
                        Icons.delete,
                      ),
                    ),
                  ),
                ]
            ),
          ),
        )
    );

  }
}