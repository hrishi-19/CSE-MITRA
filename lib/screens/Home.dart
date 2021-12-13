import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mitra/provider/authentication.dart';
import 'package:mitra/screens/tasks.dart';
import 'package:mitra/widgets/HomeWidget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  AuthClass authClass=AuthClass();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Colors.grey[100],
        body:SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Positioned(
                    top: 10,right: 10,
                    child: RaisedButton(onPressed: (){
                      authClass.signout(context);
                    },
                      child: Text("sign out"),)),
                Expanded(child: ListView(
                  children: [
                    Spacer(),
                    HomeWidget(heading: 'Tasks', description: 'Complete your tasks with \n your the help of your mitra! ', route: '/task',img_path: 'assets/images/todo.jpg',),
                    Spacer(),
                    HomeWidget(heading:'Pomodoro', description: 'Be more productive with\n our work!',route: '/pomodoro',img_path: 'assets/images/pomodoro-timer.jpg'),
                    Spacer(),
                    HomeWidget(heading: 'Notes', description: 'checkout the prescribed \n textbooks',route: '/notes',img_path: 'assets/images/book.png')
                  ],
                ))

              ],

            ),
          ),
        )
    );
  }
}

