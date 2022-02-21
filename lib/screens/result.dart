import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mitra/utility/constants.dart';
import 'package:mitra/utility/iaMark.dart';
import 'package:mitra/widgets/bottom_navbar.dart';

class Result extends StatefulWidget {
    MarkResult data;
    String usn;
    Result({required this.data,required this.usn});


  @override
  _ResultState createState() => _ResultState(data,usn);
}

class _ResultState extends State<Result> {
  MarkResult data;
 String usn;
  _ResultState(this.data,this.usn);


  @override
  Widget build(BuildContext context) {
            return Scaffold(
              backgroundColor: Colors.white,
              body:SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image(
                            image: AssetImage('assets/images/attd.jpg'),
                            width: 200,
                            height: 200
                        ),
                      ),
                      Expanded(
                         flex: 2,
                          child:  RichText(
                              text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "USN : ",
                                        style: homeWidgetHeading.copyWith(fontSize: 16,fontWeight: FontWeight.w600)
                                    ), TextSpan(
                                        text: usn.toUpperCase(),
                                        style: GoogleFonts.josefinSans(
                                          color: Color(0XFF868290 ),
                                         fontSize: 16,
                                        ),
                                    ),
                                    TextSpan(
                                        text: "\nNAME : ",
                                        style: homeWidgetHeading.copyWith(fontSize: 16,fontWeight: FontWeight.w600)
                                    ), TextSpan(
                                        text: data.name.toUpperCase(),
                                      style: GoogleFonts.josefinSans(
                                        color: Color(0XFF868290 ),
                                        fontSize: 16,

                                      ),
                                    ),TextSpan(
                                        text: "\nCOURSE : ",
                                        style: homeWidgetHeading.copyWith(fontSize: 16,fontWeight: FontWeight.w600)
                                    ), TextSpan(
                                        text: data.course.toUpperCase(),
                                      style: GoogleFonts.josefinSans(
                                        color: Color(0XFF868290 ),
                                        fontSize: 16,

                                      ),
                                    ),
                                    TextSpan(
                                        text: "\nSEM ",
                                        style: homeWidgetHeading.copyWith(fontSize: 16,fontWeight: FontWeight.w600)
                                    ), TextSpan(
                                        text: data.sem.toString(),
                                      style: GoogleFonts.josefinSans(
                                        color: Color(0XFF868290 ),
                                        fontSize: 16,

                                      ),
                                    ),TextSpan(
                                        text: "\nSEC: ",
                                        style: homeWidgetHeading.copyWith(fontSize: 16,fontWeight: FontWeight.w600)
                                    ), TextSpan(
                                        text: data.sec.toUpperCase(),
                                      style: GoogleFonts.josefinSans(
                                        color: Color(0XFF868290 ),
                                        fontSize: 16,

                                      ),
                                    ),
                                  ]
                              )
                          )
                      ),
                    ],
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
                              DataCell(Text('UP',style: homeWidgetHeading.copyWith(fontSize: 16))),
                              DataCell(Text(data.ia1['up'].toString())),
                              DataCell(Text(data.ia2['up'].toString())),
                              DataCell(Text(data.ia3['up'].toString())),

                            ]),
                            DataRow(cells: [
                              DataCell(Text('CNS',style: homeWidgetHeading.copyWith(fontSize: 16),),),
                              DataCell(Text(data.ia1['cns'].toString())),
                              DataCell(Text(data.ia2['cns'].toString())),
                              DataCell(Text(data.ia3['cns'].toString())),

                            ]),
                            DataRow(cells: [
                              DataCell(Text('M&E',style: homeWidgetHeading.copyWith(fontSize: 16))),
                              DataCell(Text(data.ia1['me'].toString())),
                              DataCell(Text(data.ia2['me'].toString())),
                              DataCell(Text(data.ia3['me'].toString())),

                            ]),
                            DataRow(cells: [
                              DataCell(Text('ATC',style: homeWidgetHeading.copyWith(fontSize: 16))),
                              DataCell(Text(data.ia1['atc'].toString())),
                              DataCell(Text(data.ia1['atc'].toString())),
                              DataCell(Text(data.ia1['atc'].toString())),

                            ]),
                            DataRow(cells: [
                              DataCell(Text('DBMS',style: homeWidgetHeading.copyWith(fontSize: 16))),
                              DataCell(Text(data.ia1['dbms'].toString())),
                              DataCell(Text(data.ia2['dbms'].toString())),
                              DataCell(Text(data.ia3['dbms'].toString())),

                            ]),
                            DataRow(cells: [
                              DataCell(Text('ADP',style: homeWidgetHeading.copyWith(fontSize: 16))),
                              DataCell(Text(data.ia1['adp'].toString())),
                              DataCell(Text(data.ia2['adp'].toString())),
                              DataCell(Text(data.ia3['adp'].toString())),

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
