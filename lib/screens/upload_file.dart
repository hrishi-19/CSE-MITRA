import 'package:flutter/material.dart';
import 'package:mitra/provider/upload.dart';

class upload extends StatefulWidget {
  const upload({Key? key}) : super(key: key);

  @override
  _uplaodState createState() => _uplaodState();
}

class _uplaodState extends State<upload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){uploadPdf();},
        child: Icon(Icons.add),
        backgroundColor: Colors.pinkAccent,
      ),

        );
  }
}
