import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mitra/widgets/todocard.dart';
class Tasks extends StatefulWidget {
  const Tasks({Key? key}) : super(key: key);

  @override
  _TasksState createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding:EdgeInsets.symmetric(horizontal: 20,vertical: 30),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(image: AssetImage('assets/images/todo.jpg'),
                    width: 50,height: 50,),
                  Taskcard(
                    title: 'adp',
                    desc: 'maja',
                  ),
                  Taskcard(
                    title: 'Flutter',
                    desc: 'challa',
                  )

                ],
              ),
              Positioned(
                bottom: 0.0,
                right: 0.0,
                  child: FloatingActionButton(
                    onPressed: (){},
                    child: Icon(
                      Icons.add,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),

    );
  }
}
