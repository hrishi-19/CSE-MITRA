import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mitra/provider/authentication.dart';
import 'package:mitra/utility/constants.dart';
import 'package:mitra/utility/homecard.dart';
import 'package:mitra/widgets/HomeWidget.dart';
import 'package:mitra/widgets/glassbox.dart';


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
        img_url:'assets/images/book.png',
        color:Color(0xFFEF9A9A)),
    homecard(title: 'Results',
        desc: 'get your results over here',
        route:'/attendence',
        img_url:'assets/images/attd.png',color:Colors.cyan  ),
    homecard(title: 'Pomodoro',
        desc: 'Be more productive with our work!',
        route:'/pomodoro',
        img_url:'assets/images/pomodoro-timer.png',color: Colors.tealAccent ),
    homecard(title: "quiz",
        desc: "test your quiz knowledge",
        route: "/",
        img_url: 'assets/images/quiz.png',
        color: Colors.deepPurpleAccent)

  ];

  void addCards(){
    cards.forEach((element) {
      widgets.add(HomeWidget(
          heading: element.title,
          description: element.desc,
          route: element.route,
          img_path: element.img_url,
      colr: element.color,));
    });

  }





  @override
  void initState() {
    super.initState();
    addCards();



  }


  @override
  Widget build(BuildContext context) {
    String? user_name=authClass.auth.currentUser!.displayName;
    String? img=authClass.auth.currentUser!.photoURL;
    return Scaffold(
      backgroundColor: Colors.white,
        body:SafeArea(
            child: Container(
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                // image: DecorationImage(
                //     image: AssetImage("assets/images/bg.jpg"),
                //     fit: BoxFit.cover
                // ),
                color:  Color(0xFF303030),

              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 270,
                      margin: EdgeInsets.only(top: 10),

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),



                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 20,
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.centerRight,
                            child: Text("Mitra",
                            style: GoogleFonts.josefinSans(
                              color:HexColor("#4F42BB"),
                              fontWeight: FontWeight.bold,
                              fontSize: 25,

                            ),
                          )),
                          Container(
                            padding: EdgeInsets.only(top:10),
                            alignment: Alignment.centerRight,
                            child:   GestureDetector(onTap: (){
                              authClass.signout(context);
                            },child: Text("logout",
                              style: GoogleFonts.josefinSans(
                                color:Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,

                              ),),
                            ),
                          ),
                          Container(

                            alignment: Alignment.centerLeft,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(

                                  child: Container(
                                    padding: EdgeInsets.all(7),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.white,
                                            width: 2
                                        ),
                                      borderRadius: BorderRadius.circular(50)
                                    ),
                                    child: CircleAvatar(
                                      backgroundImage:NetworkImage(img!),
                                      radius: 35,
                                    ),
                                  ),


                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(left: 10),
                                ),
                               SizedBox(height: 20,),
                               Container(
                                 width: MediaQuery.of(context).size.width,
                                 alignment: Alignment.centerLeft,
                                 padding: EdgeInsets.only(left: 10),
                                 child: RichText(
                                  text: TextSpan(
                                    text: "Hello\n",
                                    style: homeWidgetHeading.copyWith(
                                      color: HexColor("#4F42BB"),
                                      fontSize: 40
                                    ),
                                    children: [
                                      TextSpan(text: "${user_name}",
                                    style:GoogleFonts.josefinSans(
                                      color:Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,

                                    ),),
                                    ]
                                  ),
                                 ),
                               ),


                              ],
                            )
                          )
                        ],
                      )
                    ),
                    Glassbox(),
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



                  ],

                ),
              ),
            ),
        ),

    );
  }
}

