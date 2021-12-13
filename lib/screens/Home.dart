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
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Expanded(child: ListView(
                  children: [
                    Spacer(),
                    HomeWidget(heading: 'Tasks', description: 'Complete your tasks with \n your the help of your mitra! ', route: '/task',img_path: 'assets/images/todo.jpg',),
                    Spacer(),
                    HomeWidget(heading:'Pomodoro', description: 'Be more productive with\n our work!',route: '/pomodoro',img_path: 'assets/images/pomodoro-timer.jpg'),
                    Spacer(),
                    HomeWidget(heading: 'Notes', description: 'checkout the prescribed \n textbooks',route: '/notes',img_path: 'assets/images/book.png')
                  ],
                )),
                Positioned(
                    top: 0,right: 0,
                    child: RaisedButton(onPressed: (){
                      authClass.signout(context);

                    },color: Colors.red,
                      child: Text("sign out",
                      style: TextStyle(
                        color: Colors.white
                      ),),)),

              ],

            ),
          ),
        )
    );
  }
}

