import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mitra/provider/authentication.dart';
class SignInScreen extends StatefulWidget {

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  AuthClass authClass=AuthClass();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Container(
        width: double.infinity,
        height: double.infinity,
    padding: EdgeInsets.all(20),
    child: Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.white,
            boxShadow: [
           BoxShadow( color: Colors.grey.shade50,
              offset: Offset(-4.0,-4.0),
              spreadRadius: 1.0,
              blurRadius: 10.0),
              BoxShadow( color: Colors.grey.shade300,
                  offset: Offset(4.0,4.0),
                  spreadRadius: 1.0,
                  blurRadius: 15.0),
            ],

        ),
      child:FlatButton.icon(onPressed: (){authClass.googleSignin(context);},
        label: Text("Sign In with Google",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
          ),),

        icon:FaIcon(FontAwesomeIcons.google,color: Colors.red,),
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        color: Colors.white,


      ),
        ),
    ],
  ),
  )
    );
}
}
