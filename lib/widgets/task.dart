import 'package:flutter/material.dart';
class Todo extends StatelessWidget {
  final String text;
  final bool isDone;
  Todo({required this.text,required this.isDone});

  @override
  Widget build(BuildContext context) {
    return Container(
        child:Row(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: Container(
                height: 20,
                width: 20,
                margin: EdgeInsets.only(left: 20,right: 20),
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                decoration: BoxDecoration(
                  color: isDone? Colors.orange:Colors.transparent,
                  border: isDone?null:Border.all(
                      color: Colors.black,
                      width: 1.5
                  ),
                  borderRadius: BorderRadius.circular(6.0),

                ),
                child: Image(
                  image: AssetImage("assets/images/check_icon.png"),
                ),
              ),
            ),
            Text(text,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff221511)
              ),)
          ],
        )
    );
  }
}