import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mitra/utility/constants.dart';
import 'package:mitra/widgets/bottom_navbar.dart';

class Result extends StatefulWidget {
    Map<String,dynamic> data;
    String usn;
    Result({Key? key, required this.data,required this.usn}) : super(key: key);


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
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Container(
                       width:double.infinity,
                       height: 150,
                       decoration: BoxDecoration(
                         // image: DecorationImage(
                         //   image: AssetImage('assets/images/bg.jpg'),
                         //   fit: BoxFit.cover
                         // )
                       ),
                       child: Padding(
                         padding: EdgeInsets.all(10),
                         child:  RichText(
                           text: TextSpan(
                             children: [
                               TextSpan(
                                 text: "USN : ",
                                style: homeWidgetHeading.copyWith(fontSize: 16)
                               ), TextSpan(
                                   text: usn.toUpperCase(),
                                   style: homeWidgetdesc
                               ),
                               TextSpan(
                                   text: "\nNAME : ",
                                   style: homeWidgetHeading.copyWith(fontSize: 16)
                               ), TextSpan(
                                   text: data['name'].toUpperCase(),
                                   style: homeWidgetdesc
                               ),TextSpan(
                                   text: "\nCOURSE : ",
                                   style: homeWidgetHeading.copyWith(fontSize: 16)
                               ), TextSpan(
                                   text: data['course'].toUpperCase(),
                                   style: homeWidgetdesc
                               ),
                               TextSpan(
                                   text: "\nSEM ",
                                   style: homeWidgetHeading.copyWith(fontSize: 16)
                               ), TextSpan(
                                   text: data['sem'].toString(),
                                   style: homeWidgetdesc
                               ),TextSpan(
                                   text: "\nSEC: ",
                                   style: homeWidgetHeading.copyWith(fontSize: 16)
                               ), TextSpan(
                                   text: data['sec'].toUpperCase(),
                                   style: homeWidgetdesc
                               ),
                             ]
                           )
                         )
                       ),
                     ),
                      Expanded(
                          child:DataTable(
                                    columns: [
                                      DataColumn(label: Text("SUBJECT",style: homeWidgetHeading.copyWith(fontSize: 16))),
                                      DataColumn(label: Text("IA1",style: homeWidgetHeading.copyWith(fontSize: 16))),
                                      DataColumn(label: Text("IA2",style: homeWidgetHeading.copyWith(fontSize: 16))),
                                      DataColumn(label: Text("IA3",style: homeWidgetHeading.copyWith(fontSize: 16)))
                                    ],
                                    rows: [
                                      DataRow(cells: [
                                        DataCell(Text('up',style: homeWidgetHeading.copyWith(fontSize: 16))),
                                        DataCell(Text(data['ia1']['up'].toString())),
                                        DataCell(Text(data['ia2']['up'].toString())),
                                        DataCell(Text(data['ia2']['up'].toString())),

                                      ]),
                                      DataRow(cells: [
                                        DataCell(Text('cns',style: homeWidgetHeading.copyWith(fontSize: 16))),
                                        DataCell(Text(data['ia1']['cns'].toString())),
                                        DataCell(Text(data['ia2']['cns'].toString())),
                                        DataCell(Text(data['ia2']['cns'].toString())),

                                      ]),
                                      DataRow(cells: [
                                        DataCell(Text('me',style: homeWidgetHeading.copyWith(fontSize: 16))),
                                        DataCell(Text(data['ia1']['me'].toString())),
                                        DataCell(Text(data['ia2']['me'].toString())),
                                        DataCell(Text(data['ia2']['me'].toString())),

                                      ]),
                                      DataRow(cells: [
                                        DataCell(Text('atc',style: homeWidgetHeading.copyWith(fontSize: 16))),
                                        DataCell(Text(data['ia1']['atc'].toString())),
                                        DataCell(Text(data['ia2']['atc'].toString())),
                                        DataCell(Text(data['ia2']['atc'].toString())),

                                      ]),
                                      DataRow(cells: [
                                        DataCell(Text('dbms',style: homeWidgetHeading.copyWith(fontSize: 16))),
                                        DataCell(Text(data['ia1']['dbms'].toString())),
                                        DataCell(Text(data['ia2']['dbms'].toString())),
                                        DataCell(Text(data['ia2']['dbms'].toString())),

                                      ]),
                                      DataRow(cells: [
                                        DataCell(Text('adp',style: homeWidgetHeading.copyWith(fontSize: 16))),
                                        DataCell(Text(data['ia1']['adp'].toString())),
                                        DataCell(Text(data['ia2']['adp'].toString())),
                                        DataCell(Text(data['ia2']['adp'].toString())),

                                      ])]
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              bottomNavigationBar: Navbar(),
            );

  }
}
