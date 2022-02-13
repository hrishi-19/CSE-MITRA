import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mitra/provider/authentication.dart';
import 'package:mitra/widgets/HomeWidget.dart';
import 'package:mitra/widgets/bottom_navbar.dart';


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
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/bg.jpg"),
                    fit: BoxFit.cover
                ),
              ),
              child: Column(
                children: [
                  Expanded(child: ListView(
                    children: [
                      HomeWidget(heading:'Attendence', description: 'Check your\n attendence',route: '/attendence',img_path: 'assets/images/attd.jpg'),
                      HomeWidget(heading: 'Assignments', description: 'upload your \n assignmenst here',route: '/notes',img_path: 'assets/images/book.png'),
                      HomeWidget(heading:'Pomodoro', description: 'Be more productive with\n our work!',route: '/pomodoro',img_path: 'assets/images/pomodoro-timer.jpg'),

                    ],
                  )),


                ],

              ),
            ),
        ),
      bottomNavigationBar:Navbar()
    );
  }
}

