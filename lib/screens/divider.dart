import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:mitra/service/authentication.dart';
import 'package:mitra/screens/home.dart';
import 'package:mitra/screens/menu.dart';

class Divider extends StatefulWidget {
  const Divider({Key? key}) : super(key: key);

  @override
  _DividerState createState() => _DividerState();
}

class _DividerState extends State<Divider> {
  AuthClass auth=AuthClass();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder (
      future: FirebaseAuth.instance.currentUser as Future,
        builder:(context,snapshot){
        if(snapshot.hasData){
          return Home();
        }
        else{
          return MainPage();
        }
        }
    );
  }
}
