import 'package:flutter/material.dart';
import 'package:mitra/screens/tasks.dart';
import 'package:mitra/widgets/HomeWidget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.grey[100],
      body:SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Spacer(),
              HomeWidget(heading: 'Tasks', description: 'Complete your tasks ', route: '/task',img_path: 'assets/images/todo.jpg',),
              Spacer(),
              HomeWidget(heading:'Pomodoro', description: 'Be more productive with our work!',route: '/pomodoro',img_path: 'assets/images/todo.jpg'),
              Spacer(),
              HomeWidget(heading: 'Notes', description: 'checkout the prescribed textbooks',route: '/notes',img_path: 'assets/images/todo.jpg')

            ],

          ),
        ),
      )
    );
  }
}
