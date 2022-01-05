import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mitra/provider/authentication.dart';
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
        backgroundColor: Colors.white,
        body:SafeArea(
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              children: [
                Expanded(child: ListView(
                  children: [
                    HomeWidget(heading:'Pomodoro', description: 'Be more productive with\n our work!',route: '/pomodoro',img_path: 'assets/images/pomodoro-timer.jpg'),
                    HomeWidget(heading: 'Assignments', description: 'upload your \n assignmenst here',route: '/notes',img_path: 'assets/images/book.png'),
                    RaisedButton(
                      child: Text("logout"),
                      onPressed: (){authClass.signout(context);

                      },
                    ),

                  ],
                )),


              ],

            ),
          ),
        )
    );
  }
}

