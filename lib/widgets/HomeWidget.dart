import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class HomeWidget extends StatelessWidget {
  final String heading;
  final String description;
  final String route;
  final String img_path;
  HomeWidget({required this.heading,required this.description,required this.route,required this.img_path});


  @override
  Widget build(BuildContext context) {
    return Container(
      child:Padding(
        padding: EdgeInsets.all(10),
        child: Container(

          width: MediaQuery.of(context).size.width* 0.80,
            height: 175,
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
            margin: EdgeInsets.only(
                bottom: 25,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),  color:Colors.grey.shade200 ,
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-5,-5),
                  spreadRadius: 5,
                  blurRadius: 15
                ),
                BoxShadow(
                    color: Colors.grey.shade400,
                    offset: Offset(5,5),
                    spreadRadius: 3,
                    blurRadius: 15
                )
              ]


            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('$heading',
                      style: TextStyle(
                          color:Color(0xFF303030),
                          fontSize: 28,
                          fontWeight: FontWeight.w800
                      ),),
                      Padding(padding: EdgeInsets.only(
                          top: 20
                      )),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Text(description,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF303030),
                              fontSize: 22,

                          ),),
                      ),
                     RaisedButton(onPressed: (){
                       print(route);
                      Navigator.pushNamed(context, route);
                      }, color:Colors.green,
                        child: Text("GO",
                          style: TextStyle(
                              fontSize: 20,
                              color:Colors.white,
                              fontWeight: FontWeight.bold
                          ),),
                      )

                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    width: 150,
                    height: 100,
                    child: Image(
                      image: AssetImage('$img_path'),
                    ),
                  ),
                )
              ],
            ),
        ),
      ),
    );
  }
}
