import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // appBar: AppBar(
      //   backgroundColor: Color(0xFF512DA8),
      //   title: Text("MITRA",
      //   style:GoogleFonts.signikaNegative(
      //     color: Colors.white,
      //     fontSize: 25,
      //
      //   ),),
      //   elevation: 0,
      // ),
      body: SafeArea(
        child: Container(
          // padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/mitra.jpg')
                    )
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width/1.7,
                height: MediaQuery.of(context).size.height/15,
                child: ElevatedButton(
                  onPressed: () {  },
                  style: ButtonStyle(
                     shape:MaterialStateProperty.all<RoundedRectangleBorder>(
                         RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(15.0),
                         )
                     ),
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF512DA8)),
                      shadowColor:MaterialStateProperty.all<Color>(Color(0xFF512DA8))
                  ),
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.josefinSans(
                      color: Colors.white70,
                      fontSize: 20,

                    ),
                  ),

                ),
              ),
              SizedBox(height: 50,),
              Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  height: 350,
                  decoration: BoxDecoration(
                    color:Color(0xFF512DA8) ,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(75),
                        topLeft: Radius.circular(75))
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

