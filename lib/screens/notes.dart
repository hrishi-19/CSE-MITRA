import 'package:flutter/material.dart';
class Notes extends StatelessWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: GestureDetector(
            onTap: (){

            },
            child: Container(
                width: 300,
                height: 150,
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 35),
                margin: EdgeInsets.only(
                    bottom: 25
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green
                ),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("CNS NOtes",
                      style: TextStyle(
                          color: Color(0XFF211551),
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                      ),)

                  ],
                )
            ),
          ),
        ),
      ),
    );
  }
}
