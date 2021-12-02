import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Taskcard extends StatelessWidget {
  final String title;
  final String desc;
  Taskcard({required this.title,required this.desc});


  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 35),
        margin: EdgeInsets.only(
            bottom: 25
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[100],
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title??"un named task",
              style: TextStyle(
                  color: Color(0XFF211551),
                  fontSize: 22,
                  fontWeight: FontWeight.bold
              ),),
            Padding(padding: EdgeInsets.only(
                top: 20
            )),
            Text(desc??"display",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color(0XFF868290),
                  fontSize: 16
              ),)

          ],
        )
    );
  }
}