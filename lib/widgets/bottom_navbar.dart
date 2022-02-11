import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
class Navbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        iconTheme: IconThemeData(color: Colors.white)
      ),
      child: CurvedNavigationBar(
        color: Color(0xFF512DA8),
        height: 60,
        backgroundColor: Colors.transparent,
        items: [
          Icon(Icons.home,size: 40,),
          Icon(Icons.person,size:40)
        ],
      ),
    );
  }
}
