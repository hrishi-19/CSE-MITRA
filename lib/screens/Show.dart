
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:mitra/provider/authentication.dart';
class Show extends StatefulWidget {
  const Show({Key? key}) : super(key: key);

  @override
  _ShowState createState() => _ShowState();
}

class _ShowState extends State<Show> {
  AuthClass authClass=AuthClass();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      );


  }
}
