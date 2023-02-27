import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mitra/screens/assignment.dart';
import 'package:mitra/screens/menu.dart';
import 'package:mitra/screens/home.dart';
import 'package:mitra/screens/marks.dart';
import 'package:mitra/screens/notes.dart';
import 'package:mitra/screens/pomodoro.dart';
import 'package:mitra/screens/splash.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context)=>splash(),
        '/home':(context)=>MainPage(),
        '/menu':(context)=>Home(),
        '/notes': (context) => Notes(),
        '/pomodoro': (context) => Pomodoro(),
        '/assignment':(context)=>Assignment(),
        '/attendence':(context)=>Attendence(),



      },

    );
  }
}