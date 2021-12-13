import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mitra/provider/authentication.dart';
import 'package:provider/provider.dart';
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
        Image(
          image: AssetImage('assets/images/logo.png'),
          width: 100,height: 100,

        ),
      SizedBox(height: 75,),
        RaisedButton.icon(onPressed: (){authClass.googleSignin(context);},
          label: Text("SignIn with Google"),
          icon:FaIcon(FontAwesomeIcons.google,color: Colors.red,),
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
          shape: StadiumBorder(),

        ),
        SizedBox(height: 20,),
        Text("Login to continue",
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),)
      ],
    ),
  ),
  );
}
}
