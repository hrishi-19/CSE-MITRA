import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mitra/screens/upload_file.dart';

class ClassWidget extends StatelessWidget {
  late String name;
  late String url;
  late String route;
  ClassWidget({required this.name,required this.url,required this.route});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder:(context,constraints)=>Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          width:constraints.maxWidth,
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          margin: EdgeInsets.only(
              bottom: 25
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300,
                    offset: Offset(4.0,4.0),
                    spreadRadius: 1.0,
                    blurRadius: 10.0),
                BoxShadow(
                    color: Colors.grey.shade50,
                    offset: Offset(-4.0,-4.0),
                    spreadRadius: 1.0,
                    blurRadius: 10.0),
              ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Flexible(
                 flex:2,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                Text(name,
                   style: TextStyle(
                       color: Color(0XFF211551),
                       fontSize: 22,
                       fontWeight: FontWeight.bold
                   ),),
               Padding(padding: EdgeInsets.all(10)),
               RaisedButton(onPressed: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ImageUploads(folder: route)));
                 },
                 color: Colors.green,
                 child: Text("Upload",
                   style: TextStyle(
                       fontSize: 20,
                       color:Colors.white,
                       fontWeight: FontWeight.bold
                   ),),
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10)
               ),),
                 ],
               ),
             ),
              Flexible(
                flex: 1,
                child: Container(
                  width: 60,
                  height: 60,
                  child: Image(
                    image: AssetImage(url),
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
