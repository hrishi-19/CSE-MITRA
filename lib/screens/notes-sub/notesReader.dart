import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class NoteReader extends StatefulWidget {
  QueryDocumentSnapshot doc;
   NoteReader({ required this.doc});

  @override
  _NoteReaderState createState() => _NoteReaderState(doc);
}

class _NoteReaderState extends State<NoteReader> {
  late QueryDocumentSnapshot doc;

  _NoteReaderState(this.doc);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(doc["title"],style:GoogleFonts.josefinSans(
                color:HexColor("#665DD0"),
                fontWeight: FontWeight.w900,
                fontSize: 35,
              ),
              ),
              SizedBox(height: 30,),
              Text(doc["content"],style: GoogleFonts.josefinSans(
                color:HexColor("#665DD0"),
                fontWeight: FontWeight.w500,
                fontSize: 18,

              ),),


            ],
          ),
        ),

      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red.shade900,
        onPressed: () {
          FirebaseFirestore.instance.collection("Notes").doc(doc.id).delete().then((value) => Navigator.pop(context));
        },
        child: Icon(Icons.delete),
      ),
    );
  }
}
