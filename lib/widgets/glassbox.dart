import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    " If there was a computer as powerful as the human brain, it would be able to do 38 thousand trillion operations per second and hold more than 3580 terabytes of memory.",
    "The password for the computer controls of nuclear tipped missiles of the U.S was 00000000 for eight years.",
    "Approximately 70% of virus writers are said to work under contract for organized crime syndicates.",
    "An average person normally blinks 20 times a minute, but when using a computer he/she blinks only 7 times a minute.",


  ];
  String display(){
    return words[rd.nextInt(words.length)];
  }
  @override
  void initState() {
    super.initState();
    news=display();


  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height:100,
        padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.2),
                Colors.white.withOpacity(0.09)
              ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight

          ),
          border: Border.all(
            color: Colors.white,
            width: 0.5
          ),
            borderRadius: BorderRadius.circular(10)

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Did you know?",
            style:GoogleFonts.josefinSans(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold

            ),
            ),
            SizedBox(height: 10,),
            Text(news,
              style: GoogleFonts.josefinSans(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold

              ),
            )
          ],
        ),
      ),
    );
  }
}
