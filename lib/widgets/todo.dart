import 'package:flutter/material.dart';
class Todo extends StatelessWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        children: [
          Container(
            padding: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(6.0)

            ),
            child: Image(
              image: AssetImage("assets/images/add_icon.png"),
            ),
          ),
        ],
      )
    );
  }
}
