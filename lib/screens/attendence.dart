import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mitra/model/iaMark.dart';

class Attendence extends StatefulWidget {
  const Attendence({Key? key}) : super(key: key);

  @override
  _AttendenceState createState() => _AttendenceState();
}

class _AttendenceState extends State<Attendence> {
  var data;

  Future<String> getJson() {
    return DefaultAssetBundle.of(context).loadString("data/marks.json");
  }
  Future<Map<String,dynamic>> getData() async {

   return jsonDecode(await getJson());
    //print(dataIndex);
  }
  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:   Center(
        child: FutureBuilder(
            future: getData(),
            builder:(context,snapshot){
              if(snapshot.hasData) {
                final data1 =snapshot.data as Map<String,dynamic>;

                return Container(
                  child: Text(data1["1by19cs012"]['name'].toString()),
                );

              }
              return Container(
                color:Colors.yellow
              );
            }
        ),
      )
    );
  }
}
