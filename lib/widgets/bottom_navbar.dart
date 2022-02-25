import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        iconTheme: const IconThemeData(color: Colors.white)
      ),
      child: CurvedNavigationBar(
        color: const Color(0xFF512DA8),
        height: 40,
        backgroundColor: Colors.transparent,
        items: const [
          Icon(Icons.home,size: 20),
          Icon(Icons.person,size:20)
        ],
      ),
    );
  }
}
