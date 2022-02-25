import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mitra/provider/authentication.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  AuthClass auth=AuthClass();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
             backgroundImage:   NetworkImage(FirebaseAuth.instance.currentUser!.photoURL.toString(),),
              backgroundColor: Colors.transparent,
            ),
            ListView(
              children: [
                ListTile(
                  leading: Text(""),
                )
              ],
            )
            
          ],
        ),
      ) ,
    );
  }
}
