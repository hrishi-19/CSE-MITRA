import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mitra/provider/authentication.dart';

class SignupMail extends StatefulWidget {
  const SignupMail({Key? key}) : super(key: key);

  @override
  _SignupMailState createState() => _SignupMailState();
}

class _SignupMailState extends State<SignupMail> {
  late String email;
  late String pass;
  GlobalKey<FormState>_formkey=GlobalKey<FormState>();
  late AuthClass _auth;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
        color: Colors.white,
        child: Column(
          children: [
            Container(
              child: Image(image: AssetImage('assets/images/mitra.png'),width: 300,height: 300,),
              alignment: Alignment.center,
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
                    backgroundColor: MaterialStateProperty.all<HexColor>(HexColor("#FAFAFA") ),
                    shadowColor:MaterialStateProperty.all<HexColor>( HexColor("#FAFAFA"))
                ),
                child: Text(
                  "Signup with Mitra",
                  style: GoogleFonts.josefinSans(
                    color:HexColor("#665DD0"),
                    fontWeight: FontWeight.bold,
                    fontSize: 25,

                  ),
                ),

              ),
            ),
            SizedBox(height: 50,),
            Form(
              key: _formkey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),labelText: "Email",

                      ),
                      validator: (_val){
                        if(_val!.isEmpty){
                          return "cant be empty";

                        }
                        else return null;
                      },
                      onChanged: (val){
                        email=val;
                      },
                    ),
                    SizedBox(height: 50,),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),labelText: "Password",


                      ),
                      obscureText: true,
                      validator: (_val){
                        if(_val!.length<6){
                          return "cant be empty";

                        }
                        else return null;
                      },
                      onChanged: (val){
                        pass=val;
                      },
                    ),
                    Container(
                      margin: EdgeInsets.only(top:20),
                      child: RaisedButton(onPressed: (){

                      },
                      color: Colors.green,
                      textColor: Colors.white,
                      elevation: 2.0,
                      child: Text("Sign Up"),),
                    )
                  ],
                ))
          ],
        ),

        )
    );
  }
}
