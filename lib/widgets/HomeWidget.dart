import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mitra/screens/upload_file.dart';
class HomeWidget extends StatelessWidget {
  final String heading;
  final String description;
  final String route;
  final String img_path;
  final Color colr;
  HomeWidget({required this.heading,required this.description,required this.route,required this.img_path,required this.colr});


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
              borderRadius: BorderRadius.circular(10),  color:colr ,


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
                          color: Colors.white,
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
                              color: Colors.white,
                              fontSize: 22,

                          ),),
                      ),
                     RaisedButton(onPressed: (){
                       print(route);
                      Navigator.pushNamed(context, route);
                      }, color:Color(0xFF303030),
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
