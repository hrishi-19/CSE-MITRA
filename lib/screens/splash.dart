import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}


class _splashState extends State<splash> {
  void validate() async{
    SharedPreferences pre= await SharedPreferences.getInstance() as SharedPreferences;
    var value=pre.getString("val");
    Timer(Duration(seconds: 2),()=>
    value==null?Navigator.pushNamed(context, '/home'):Navigator.pushNamed(context, '/menu'));
  }
  @override
  void initState() {
    // TODO: implement initState
    validate();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
