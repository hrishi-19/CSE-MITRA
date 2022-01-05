import 'package:flutter/material.dart';
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
              children: [
                Expanded(child: ListView(
                  children: [
                    ClassWidget(name: 'Mangement and \n enterpreneurship', url:'assets/images/me.jpg'),
                    ClassWidget(name: 'computer\n neworks', url:'assets/images/cns.png'),
                    ClassWidget(name: 'Database \n management system', url: 'assets/images/dbms.png'),
                    ClassWidget(name: 'Automate theory \n computation', url: 'assets/images/atc.png'),
                    ClassWidget(name: 'Python', url: 'assets/images/adp.png'),
                    ClassWidget(name: 'Linux programming', url: 'assets/images/up.jpg')



                  ],
                )),


              ],

            ),
          ),
        )
    );
  }
}
