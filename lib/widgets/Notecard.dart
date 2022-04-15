import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mitra/utility/constants.dart';
Widget NoteCard(Function()?onTap,QueryDocumentSnapshot doc){
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            offset: Offset(-5,-5),
            spreadRadius: 3,
            blurRadius: 10
          ),
          BoxShadow(
              color: Colors.grey.shade400,
              offset: Offset(5,5),
              spreadRadius: 3,
              blurRadius: 10
          ),

        ],
        borderRadius: BorderRadius.circular(15),

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(doc["title"],style:GoogleFonts.josefinSans(
            color:HexColor("#665DD0"),
            fontWeight: FontWeight.w900,
            fontSize: 25,


          ),
          ),
          SizedBox(height: 10,),
          Text(doc["date"],style: GoogleFonts.josefinSans(
            color:HexColor("#665DD0"),
            fontWeight: FontWeight.w900,
            fontSize: 15,

          ),),
          SizedBox(height: 15,),

          Text(doc["content"],style: GoogleFonts.josefinSans(
            color:HexColor("#665DD0"),
            fontWeight: FontWeight.w500,
            fontSize: 18,


          ),
          overflow: TextOverflow.ellipsis,),


        ],
      ),
    ),
  );

}