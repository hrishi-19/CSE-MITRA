import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mitra/utility/constants.dart';

class Glassbox extends StatefulWidget {

  @override
  _GlassboxState createState() => _GlassboxState();
}

class _GlassboxState extends State<Glassbox> {
   String news=" ";
  var rd=Random();
  List<String> words=[
    "The first electronic computer ENIAC weighed more than 27 tons and took up 1800 square feet.",
    "Only about 10% of the world’s currency is physical money, the rest only exists on computers.",
    "TYPEWRITER is the longest word that you can write using the letters only on one row of the keyboard of your computer",
    "Doug Engelbart invented the first computer mouse in around 1964 which was made of wood",
    "Around 50% of all Wikipedia vandalism is caught by a single computer program with more than 90% accuracy.",
    "The password for the computer controls of nuclear tipped missiles of the U.S was 00000000 for eight years.",
    "Approximately 70% of virus writers are said to work under contract for organized crime syndicates.",
    "An average person normally blinks 20 times a minute, but when using a computer he/she blinks only 7 times a minute.",


  ];
  Future<String> display() async{
    
    return  await words[rd.nextInt(words.length)];
  }
  @override
  void initState() {
    super.initState();



  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height:125,
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        decoration: BoxDecoration(
          // gradient: LinearGradient(
          //     colors: [
          //       Colors.black.withOpacity(0.5),
          //       Colors.black.withOpacity(0.05)
          //     ],
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight
          //
          // ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                offset:Offset(0,5),
                  blurRadius: 10,
                spreadRadius: 5

            ),
              BoxShadow(
                color: Colors.white,
                offset:Offset(0,-5),
                blurRadius: 10,
                spreadRadius: 5

              ),
            ],
          color: Colors.grey.shade200,
          border: Border.all(
            color: Colors.white,
            width: 0.5
          ),
            borderRadius: BorderRadius.circular(15)

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Did you know?",
            style:GoogleFonts.josefinSans(
                color:Colors.redAccent,
                fontSize: 20,
                fontWeight: FontWeight.w900

            ),
            ),
            SizedBox(height: 10,),
            FutureBuilder(
              future: display(),
                builder:
                (context,snapshot){
                if(snapshot.hasData){
                  var text=snapshot.data as String;
                  return
                    Text(text,
                      style: GoogleFonts.josefinSans(
                          color: Colors.green.shade700,
                          fontSize: 18,
                          fontWeight: FontWeight.bold

                      ),
                    );

                }
                else return Text("hello");

            })
          ],
        ),
      ),
    );
  }
}
