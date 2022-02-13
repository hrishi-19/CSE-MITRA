import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mitra/widgets/bottom_navbar.dart';

class Result extends StatefulWidget {
    Map<String,dynamic> data;
    String usn;
    Result({required this.data,required this.usn});


  @override
  _ResultState createState() => _ResultState(data,usn);
}

class _ResultState extends State<Result> {
Map<String,dynamic>data;
 String usn;
  _ResultState(this.data,this.usn);


  @override
  Widget build(BuildContext context) {
            return Scaffold(
              body:SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Container(
                     width:double.infinity,
                     height: 200,
                     decoration: BoxDecoration(
                       // image: DecorationImage(
                       //   image: AssetImage('assets/images/bg.jpg'),
                       //   fit: BoxFit.cover
                       // )
                     ),
                     child: Padding(
                       padding: EdgeInsets.all(10),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Expanded(
                             child: Text("NAME:"+data["name"])
                           )
                         ],
                       ),
                     ),
                   ),
                    Expanded(
                        child:DataTable(
                                  columns: [
                                    DataColumn(label: Text("SUBJECT")),
                                    DataColumn(label: Text("IA1")),
                                    DataColumn(label: Text("IA2")),
                                    DataColumn(label: Text("IA3"))
                                  ],
                                  rows: [
                                    DataRow(cells: [
                                      DataCell(Text('up')),
                                      DataCell(Text(data['ia1']['up'].toString())),
                                      DataCell(Text(data['ia2']['up'].toString())),
                                      DataCell(Text(data['ia2']['up'].toString())),

                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('cns')),
                                      DataCell(Text(data['ia1']['cns'].toString())),
                                      DataCell(Text(data['ia2']['cns'].toString())),
                                      DataCell(Text(data['ia2']['cns'].toString())),

                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('me')),
                                      DataCell(Text(data['ia1']['me'].toString())),
                                      DataCell(Text(data['ia2']['me'].toString())),
                                      DataCell(Text(data['ia2']['me'].toString())),

                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('atc')),
                                      DataCell(Text(data['ia1']['atc'].toString())),
                                      DataCell(Text(data['ia2']['atc'].toString())),
                                      DataCell(Text(data['ia2']['atc'].toString())),

                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('dbms')),
                                      DataCell(Text(data['ia1']['dbms'].toString())),
                                      DataCell(Text(data['ia2']['dbms'].toString())),
                                      DataCell(Text(data['ia2']['dbms'].toString())),

                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text('adp')),
                                      DataCell(Text(data['ia1']['adp'].toString())),
                                      DataCell(Text(data['ia2']['adp'].toString())),
                                      DataCell(Text(data['ia2']['adp'].toString())),

                                    ])]
                      ),
                    ),

                  ],
                ),
              ),
              bottomNavigationBar: Navbar(),
            );

  }
}