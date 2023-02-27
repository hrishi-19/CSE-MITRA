import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mitra/service/authentication.dart';
import 'package:mitra/utility/constants.dart';
import 'package:mitra/utility/homecard.dart';
import 'package:mitra/widgets/HomeWidget.dart';
import 'package:mitra/widgets/glassbox.dart';

import '../service/shredpref.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  AuthClass auth = AuthClass();
  List<HomeWidget> widgets = [];
  List<homecard> cards = [
    homecard(
      title: 'Assignments',
      desc: 'upload your\n assignments ',
      route: '/assignment',
      img_url: 'assets/images/book.png',
    ),
    homecard(
      title: 'Results',
      desc: 'get your results over here',
      route: '/attendence',
      img_url: 'assets/images/attd.png',
    ),
    homecard(
      title: 'Pomodoro',
      desc: 'Work with pomodomro!',
      route: '/pomodoro',
      img_url: 'assets/images/pomodoro.png',
    ),
    homecard(
      title: "Notes",
      desc: "take up your notes",
      route: "/notes",
      img_url: 'assets/images/notes.png',
    )
  ];

  void addCards() {
    cards.forEach((element) {
      widgets.add(HomeWidget(
        heading: element.title,
        description: element.desc,
        route: element.route,
        img_path: element.img_url,
      ));
    });
  }


  @override
  void initState() {
    super.initState();
    addCards();
  }

  @override
  Widget build(BuildContext context) {
    String name = FirebaseAuth.instance.currentUser!.displayName.toString();
    String imgUrl = FirebaseAuth.instance.currentUser!.photoURL.toString();
    ImageProvider img;
    if (imgUrl==null) {
      img = AssetImage("assets/images/book.png");
    } else {
      img = NetworkImage(imgUrl);
    }
    print("this is img url"+imgUrl);
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.grey[200],
          ),
          child: Column(
            children: [
              Container(
                  width: double.infinity,
                  height: 250,
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
                          child: Text(
                            "Mitra",
                            style: GoogleFonts.josefinSans(
                              color: HexColor("#665DD0"),
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          )),
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            auth.signout(context).whenComplete((){
                              removekey();
                                Navigator.pushNamedAndRemoveUntil(
                                    context, '/home', (route) => false);

                            });
                          },
                          child: Text(
                            "logout",
                            style: GoogleFonts.josefinSans(
                              color: Color(0xFF303030),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
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
                                          color: Color(0xFF303030), width: 4),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: CircleAvatar(
                                    backgroundImage: img,
                                    radius: 35,
                                  ),
                                ),
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.only(left: 10),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.only(left: 10),
                                child: RichText(
                                  text: TextSpan(
                                      text: "Hello,\n",
                                      style: homeWidgetHeading.copyWith(
                                          color: HexColor("#665DD0"),
                                          fontSize: 35),
                                      children: [
                                        TextSpan(
                                          text: "$name",
                                          style: GoogleFonts.josefinSans(
                                            color: Color(0xFF303030),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25,
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                            ],
                          ))
                    ],
                  )),
              Glassbox(),
              SizedBox(
                height: 30,
              ),
              Container(
                  height: 250,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: widgets.length,
                      itemBuilder: (context, index) {
                        return Container(
                            margin: EdgeInsets.only(top: 10),
                            child: widgets[index]);
                      })),
            ],
          ),
        ),
      ),
    );
  }
}
