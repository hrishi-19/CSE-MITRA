import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }


  @override
  AuthClass auth=AuthClass();

  Widget build(BuildContext context) {
    final iskeyBoard=MediaQuery.of(context).viewInsets.bottom!=0;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
        color: Colors.grey.shade200,
        child: Column(
          children: [
            if(!iskeyBoard)Column(
              mainAxisAlignment:MainAxisAlignment.start,
              children: [
                Container(
                  child: Image(image: AssetImage('assets/images/mitra.png'),width: 300,height: 300,),
                  alignment: Alignment.center,
                ),

                Container(
                  width: MediaQuery.of(context).size.width/1.7,
                  height: MediaQuery.of(context).size.height/15,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade400,
                            offset: Offset(5,5,),
                            spreadRadius: 5,
                            blurRadius: 10
                        ),
                        BoxShadow(
                            color: Colors.white,
                            offset: Offset(-5,-5,),
                            spreadRadius: 5,
                            blurRadius: 10
                        )
                      ]
                  ),
                  child: Center(
                    child: Text(
                      "Signup with Mitra",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.josefinSans(
                        color:HexColor("#665DD0"),
                        fontWeight: FontWeight.bold,
                        fontSize: 25,

                      ),
                    ),
                  ),
                ),
              ],
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
                        auth.emailSignUp(email, pass).whenComplete(() => Navigator.pushNamedAndRemoveUntil(context, '/menu', (route) => false));


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
