import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mitra/provider/authentication.dart';

class MainPage extends StatelessWidget {

AuthClass auth=AuthClass();

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
          color: Color(0xFFF3E5F5),
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
                      image: AssetImage('assets/images/mitra.png')
                    )
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width/1.7,
                height: MediaQuery.of(context).size.height/15,
                child: ElevatedButton(
                  onPressed: () {
                  },
                  style: ButtonStyle(
                     shape:MaterialStateProperty.all<RoundedRectangleBorder>(
                         RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(15.0),
                         )
                     ),
                    elevation: MaterialStateProperty.all<double>(10.0),
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFBA68C8)),
                      shadowColor:MaterialStateProperty.all<Color>(Color(0xFFBA68C8))
                  ),
                  child: Text(
                    "Mitra",
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
                  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                  decoration: BoxDecoration(
                    color:Color(0xFFBA68C8) ,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(75),
                        topLeft: Radius.circular(75)),
                    boxShadow: [BoxShadow(
                      color: Colors.black54,
                      spreadRadius: 5,
                      blurRadius: 15,
                      offset:Offset(0.0,10.0)
                    )]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    GestureDetector(
                      onTap: (){
                        auth.googleSignin(context);
                      },
                      child: Container(
                        width:300,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,

                        ),
                        padding: EdgeInsets.all(10),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex:1,
                                child: Image(
                                  image: AssetImage('assets/images/googleAuth.png'),
                                ),),
                            Expanded(
                              flex:2,
                              child: Text(
                                "Signin with Google",
                                style: GoogleFonts.josefinSans(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold

                                ),
                              ),
                            ),


                          ],
                        )
                      ),
                    ),
                      // SizedBox(height: 50,),
                      GestureDetector(
                        onTap: (){

                        },
                        child: Container(
                            width:300,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,

                            ),
                            padding: EdgeInsets.all(10),
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    flex:1,
                                    child: Image(
                                      image: AssetImage('assets/images/mailAuth.png'),
                                    )),
                                Expanded(
                                  flex:2,
                                  child: Text(
                                    "Signin with email",
                                    style: GoogleFonts.josefinSans(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold

                                    ),
                                  ),
                                ),


                              ],
                            )
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                                margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                                child: Divider(
                                  color: Colors.white,
                                )),
                          ),
                          Text(
                            "OR",
                            style: GoogleFonts.josefinSans(
                                color: Colors.white,
                                fontSize: 15,
                              

                            ),),
                          Expanded(
                            child: Container(
                                margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                                child: Divider(
                                  color: Colors.white,
                                )),
                          ),
                        ],
                      ),
                      Text(
                        "New user ? Register",
                        style: GoogleFonts.josefinSans(
                          color: Colors.white,
                          fontSize: 18,


                        ),),



                    ],
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

