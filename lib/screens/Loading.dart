
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mitra/screens/Home.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class Loader extends StatefulWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  _LoaderState createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  void spin(){
    Future.delayed(Duration(seconds: 2),(){
      Navigator.pushReplacementNamed(context, '/home');
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    spin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Image(
                image: AssetImage('assets/images/logo.png'),
                width: 150,
                height: 150,
              ),
              SizedBox(height: 40,),
              SpinKitFadingCube(
                color: Colors.purpleAccent,
                size: 70.0,
              ),
            ],
          ),
        ));
  }
}

