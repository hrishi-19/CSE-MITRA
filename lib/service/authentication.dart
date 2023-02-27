import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
class AuthClass{
  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );
  FirebaseAuth auth=FirebaseAuth.instance;
  Future<bool>googleSignin(BuildContext context)async {
    try{
      GoogleSignInAccount? googleSignInAccount= await _googleSignIn.signIn();
      if(googleSignInAccount!=null){
        GoogleSignInAuthentication googleSignInAuthentication=await googleSignInAccount.authentication;
        AuthCredential credential=GoogleAuthProvider.credential(
            idToken: googleSignInAuthentication.idToken,
            accessToken: googleSignInAuthentication.accessToken
        );
        try{
          UserCredential userCredential=await auth.signInWithCredential(credential);


        }
        catch(e){
          final snackBar=SnackBar(content:Text(e.toString()));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);


        }
      }
      else{
        final snackBar=SnackBar(content:Text("Not able to signin"));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }
    catch(e){
      final snackBar=SnackBar(content:Text(e.toString()));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);

    }
    return Future.value(true);
  }
  Future<bool>emailSignIn(String email,String pass)async{
    AuthCredential authCredential =await auth.signInWithEmailAndPassword(email: email, password: pass) as AuthCredential;
    return Future.value(true);
  }
  Future<bool>emailSignUp(String email,String pass)async{
    AuthCredential authCredential =await auth.createUserWithEmailAndPassword(email: email, password: pass) as AuthCredential;
    return Future.value(true);
  }
  Future<bool>signout(BuildContext context)async{
    await _googleSignIn.disconnect();
    await auth.signOut();
    return Future.value(true);


  }
}