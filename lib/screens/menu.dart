import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mitra/provider/authentication.dart';
import 'package:mitra/utility/homecard.dart';
import 'package:mitra/widgets/HomeWidget.dart';
import 'package:mitra/widgets/bottom_navbar.dart';


class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  AuthClass authClass=AuthClass();
  List<HomeWidget> widgets=[];
  List<homecard> cards=[
    homecard(title: 'Assignments',
        desc: 'upload your\n assignments here',
        route:'/notes',
        img_url:'assets/images/book.png'  ),
    homecard(title: 'Attendence',
        desc: 'check your\n attendence',
        route:'/attendence',
        img_url:'assets/images/attd.jpg'  ),
    homecard(title: 'Pomodoro',
        desc: 'Be more productive with\n our work!',
        route:'/pomodoro',
        img_url:'assets/images/pomodoro-timer.jpg'  ),

  ];

  void addCards(){
    cards.forEach((element) {
      widgets.add(HomeWidget(
          heading: element.title,
          description: element.desc,
          route: element.route,
          img_path: element.img_url));
    });
  }



  @override
  void initState() {
    super.initState();
    addCards();

  }


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
                  Expanded(
                      child:ListView.builder(
                        itemCount: widgets.length,
                          itemBuilder: (context,index){
                          return widgets[index];
                          }
                      ) ),


                ],

              ),
            ),
        ),
      bottomNavigationBar:Navbar()
    );
  }
}

