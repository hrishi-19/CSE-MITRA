import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mitra/screens/taskpage.dart';
import 'package:mitra/widgets/taskcard.dart';
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
          padding:EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 30)),
                  Image(image: AssetImage('assets/images/todo.jpg'),
                    width: 50,height: 50,),
                  Expanded(
                    child: ListView(
                      children: [
                        Taskcard(
                          title: 'adp',
                          desc: 'maja',
                        ),
                        Taskcard(
                          title: 'Flutter',
                          desc: 'challah',
                        )
                      ],
                    ),
                  )

                ],
              ),
              Positioned(
                bottom: 10,
                right: 0.0,
                child: FloatingActionButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder:(context)=>TaskPage()
                    ));
                  },
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