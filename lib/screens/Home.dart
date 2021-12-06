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
              HomeWidget(heading: 'Tasks', description: 'Complete your tasks with the help of your Mitra'),
              Spacer(),
              HomeWidget(heading:'Pomodoro', description: 'Be more productive with our work!'),
              Spacer(),
              HomeWidget(heading: 'Notes', description: 'checkout the prescribed textbooks')

            ],

          ),
        ),
      )
    );
  }
}
