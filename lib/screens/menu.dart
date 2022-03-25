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
    homecard(title: 'Results',
        desc: 'check your\n results',
        route:'/attendence',
        img_url:'assets/images/attd.png'  ),
    homecard(title: 'Pomodoro',
        desc: 'Be more productive with\n our work!',
        route:'/pomodoro',
        img_url:'assets/images/pomodoro-timer.png'  ),

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
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
              decoration: BoxDecoration(
                // image: DecorationImage(
                //     image: AssetImage("assets/images/bg.jpg"),
                //     fit: BoxFit.cover
                // ),
                color:  Color(0xFFF3E5F5),

              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 250,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      height: 300,
                        child:ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: widgets.length,
                            itemBuilder: (context,index){
                            return widgets[index];

                            }
                        ) ),
                    RaisedButton(onPressed: (){
                      authClass.signout(context);
                    },child: Text("logout"),)


                  ],

                ),
              ),
            ),
        ),
      bottomNavigationBar:Navbar()
    );
  }
}

