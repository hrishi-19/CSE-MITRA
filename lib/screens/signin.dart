import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
        gradient: LinearGradient(
        colors: [
        Colors.blue,
        Colors.red,
        ],
    ),
    ),
    child: Card(
    margin: EdgeInsets.only(top: 200, bottom: 200, left: 30, right: 30),
    elevation: 20,
    child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    Padding(
    padding: const EdgeInsets.only(left: 20, right: 20),
    child: MaterialButton(
    color: Colors.teal[100],
    elevation: 10,
    child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Container(color:Colors.white ,
    height: 30.0,
    width: 100,
    child: Text("Sign In with Google")
    )
    ],
    ),

    // by onpressed we call the function signup function
    onPressed: (){
          authClass.googleSignin(context);
    }
    ),
  ),
  ]
  ),
  ),
  ),
  );
}
}
