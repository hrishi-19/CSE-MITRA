import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mitra/screens/upload_file.dart';
class HomeWidget extends StatelessWidget {
  final String heading;
  final String description;
  final String route;
  final String img_path;
  HomeWidget({required this.heading,required this.description,required this.route,required this.img_path});


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder:(context,constraints)=>Padding(
        padding: EdgeInsets.all(20),
        child: Container(
            width:constraints.maxWidth,
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            margin: EdgeInsets.only(
                bottom: 25,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/homeCard.jpg"),
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(40),

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
                              color: Color(0XFF868290 ),
                              fontSize: 16,

                          ),),
                      ),
                     RaisedButton(onPressed: (){
                       print(route);
                      Navigator.pushNamed(context, route);
                      },color: Colors.green,
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
                    width: 60,
                    height: 60,
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
