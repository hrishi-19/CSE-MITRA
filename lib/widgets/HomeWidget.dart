import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mitra/screens/notes.dart';
class HomeWidget extends StatelessWidget {
  final String heading;
  final String description;
  final String route;
  HomeWidget({required this.heading,required this.description,required this.route});


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
          color: Colors.white,
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(heading,
              style: TextStyle(
                  color: Color(0XFF211551),
                  fontSize: 22,
                  fontWeight: FontWeight.bold
              ),),
            Padding(padding: EdgeInsets.only(
                top: 20
            )),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(description,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0XFF868290),
                    fontSize: 16
                ),),
            ),
            RaisedButton(onPressed: (){
              Navigator.pushNamed(context, route);
            },color: Colors.green,
            child: Text("GO",
            style: TextStyle(
              fontSize: 20,
              color:Colors.white,
              fontWeight: FontWeight.bold
            ),),)

          ],
        )
    );
  }
}
