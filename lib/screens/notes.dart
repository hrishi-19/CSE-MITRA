import 'package:flutter/material.dart';
import 'package:mitra/widgets/bottom_navbar.dart';
import 'package:mitra/widgets/classWidget.dart';
class Notes extends StatelessWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:SafeArea(
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(child: ListView(
                  children: [
                    ClassWidget(name: 'Mangement and \n enterpreneurship', url:'assets/images/me.jpg', route: '/upload',),
                    ClassWidget(name: 'computer\n neworks', url:'assets/images/cns.png',route: '/upload'),
                    ClassWidget(name: 'Database \n management system', url: 'assets/images/dbms.png',route: '/upload'),
                    ClassWidget(name: 'Automate theory \n computation', url: 'assets/images/atc.png',route: '/upload'),
                    ClassWidget(name: 'Python', url: 'assets/images/adp.png',route: '/upload'),
                    ClassWidget(name: 'Linux programming', url: 'assets/images/up.jpg',route: '/upload')



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
