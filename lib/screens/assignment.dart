import 'package:flutter/material.dart';
import 'package:mitra/widgets/classWidget.dart';
class Notes extends StatelessWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body:SafeArea(
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(child: ListView(
                  children: [
                    ClassWidget(name: 'Mangement and \n enterpreneurship', url:'assets/images/me.jpg', route: '/M&E',),
                    ClassWidget(name: 'computer\n networks', url:'assets/images/cns.png',route: '/Coputer Network'),
                    ClassWidget(name: 'Database \n management system', url: 'assets/images/dbms.png',route: '/DBMS'),
                    ClassWidget(name: 'Automate theory \n computation', url: 'assets/images/atc.png',route: '/Automata design'),
                    ClassWidget(name: 'Python', url: 'assets/images/adp.png',route: '/Python'),
                    ClassWidget(name: 'Linux programming', url: 'assets/images/up.jpg',route: '/Unix Programming')



                  ],
                )),


              ],

            ),
          ),
        ),

    );
  }
}
