import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import'package:firebase_auth/firebase_auth.dart';
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
    _auth.Signup(email, pass).whenComplete(() => setState((){}));
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
              child: Image(image: AssetImage('assets/images/mitra.png'),),
              alignment: Alignment.center,
            ),
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
                        _auth.Signup(email, pass).whenComplete(() =>  Navigator.pushNamedAndRemoveUntil(context, '/menu', (route) => false));
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
