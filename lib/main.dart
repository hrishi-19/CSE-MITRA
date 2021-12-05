import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mitra/screens/homePage.dart';
import 'package:mitra/provider/tasks.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'Todo App';

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => TodosProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: Color(0xFFf6f5ee),
      ),
      home: HomePage(),
    ),
  );
}





