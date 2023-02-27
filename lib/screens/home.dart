import 'dart:math';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mitra/service/authentication.dart';
import 'package:mitra/service/firestore.dart';
import 'package:mitra/service/shredpref.dart';
import 'package:mitra/screens/email-signup.dart';

import 'email-signin.dart';

class MainPage extends StatefulWidget {


  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var rr= Random();
  AuthClass auth=AuthClass();
  FirebaseAuth auths=FirebaseAuth.instance;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(


      body: SafeArea(
        child: Container(
          color: Colors.grey[200],
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
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 5,
                        spreadRadius: 3,
                        offset: Offset(-5,-5)
                      ),
                      BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 5,
                          spreadRadius: 3,
                          offset: Offset(5,5)
                      )
                    ]
                  ),
                  child: Text(
                    "Mitra",
                    style: GoogleFonts.josefinSans(
                      color:HexColor("#665DD0"),
                      fontWeight: FontWeight.bold,
                      fontSize: 30,

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
                      color: Colors.grey[200] ,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(75),
                          topLeft: Radius.circular(75)),
                      boxShadow: [BoxShadow(
                          color: Colors.white,
                          spreadRadius: 5,
                          blurRadius: 15,
                          offset:Offset(-10,-10.0)
                      )]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: (){
                         auth.googleSignin(context).whenComplete((){
                             setpref();

                              addUser(auths.currentUser!.displayName.toString());
                             Navigator.pushNamedAndRemoveUntil(context, '/menu', (route) => false);


                        });

                        },
                        child: Container(
                            width:300,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey[200],
                                boxShadow: [BoxShadow(
                                    color: Colors.grey.shade500,
                                    spreadRadius: 3,
                                    blurRadius: 10,
                                    offset:Offset(5,5.0)
                                ),
                                  BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 3,
                                      blurRadius: 10,
                                      offset:Offset(-3,-3.0)
                                  )]

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
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignInMail()));


                        },
                        child: Container(
                            width:300,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey.shade200,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade500,
                                      spreadRadius: 3,
                                      blurRadius: 10,
                                      offset:Offset(5,5.0)
                                  ),
                                  BoxShadow(
                                      color: Colors.white,
                                      spreadRadius: 3,
                                      blurRadius: 10,
                                      offset:Offset(-3,-3.0)
                                  )
                                ]

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
                                  color: HexColor("#665DD0"),
                                )),
                          ),
                          Text(
                            "OR",
                            style: GoogleFonts.josefinSans(
                              color:HexColor("#665DD0"),
                              fontSize: 15,
                              fontWeight: FontWeight.w700


                            ),),
                          Expanded(
                            child: Container(
                                margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                                child: Divider(
                                  color: HexColor("#665DD0"),
                                )),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignupMail()));
                        },
                        child: Text(
                          "New user ? Register",
                          style: GoogleFonts.josefinSans(
                            color: HexColor("#4F42BB"),
                            fontSize: 20, fontWeight: FontWeight.w700


                          ),),
                      ),



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


