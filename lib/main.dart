import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mitra/screens/Home.dart';
import 'package:mitra/screens/Loading.dart';
import 'package:mitra/screens/notes.dart';
import 'package:mitra/screens/pomodoro.dart';
import 'package:mitra/screens/signin.dart';
import 'package:mitra/screens/taskpage.dart';
import 'package:mitra/screens/tasks.dart';
import 'package:provider/provider.dart';

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
      theme: ThemeData(
        primaryColor: Colors.pinkAccent,
        primarySwatch: Colors.orange,
        accentColor: Colors.blueAccent,
      ),
      initialRoute: '/home',
      routes: {
        '/':(context)=>SignInScreen(),
        '/home':(context)=>Home(),
        '/notes': (context) => Notes(),
        '/pomodoro': (context) => Pomodoro(),
        '/task':(context)=>Tasks(),
      },

    );
  }
}





