import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mitra/screens/result.dart';
import 'package:mitra/utility/iaMark.dart';
class Attendence extends StatefulWidget {
  const Attendence({Key? key}) : super(key: key);

  @override
  _AttendenceState createState() => _AttendenceState();
}

class _AttendenceState extends State<Attendence> {
  var data;
  var wordup;
  late MarkResult res;

  Future<String> getJson() {
    return DefaultAssetBundle.of(context).loadString("data/marks.json");
  }
  Future<MarkResult> getData(String val) async {
    data=jsonDecode(await getJson())[val];
    res=MarkResult(name: data['name'],
        course: data['course'],
        sem: data['sem'],
        sec: data['sec'],
        ia1: data['ia1'],
        ia2: data['ia2'],
        ia3: data['ia3']);

  print(res);
   return res;
    //print(dataIndex);
  }
  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white,
      body:   SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   Expanded(
                     flex: 1,
                     child: Image(
                      image: AssetImage('assets/images/attd.png'),
                      width: 200,
                      height: 200
                  ),
                   ),
                  Expanded(
                    flex:1,
                    child: Text(
                      "Internal Assessment Result",
                      style: GoogleFonts.josefinSans(
                        color:  HexColor("#4F42BB"),
                        fontSize: 25,
                        fontWeight:FontWeight.bold

                      ),
                    ),
                  )
                ],
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter USN",
                fillColor: Colors.white



                ),
                onChanged:(text) {
                  wordup=text;
                },

              ),
              SizedBox(height: 50,),
              RaisedButton(onPressed:(){
                getData(wordup.toString()).then((value) =>
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                        Result(data: value, usn: wordup,)))
                );


              },
                elevation: 0,
                child: Text("Submit",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),),
              color: HexColor("#4F42BB"),),
              // FutureBuilder(
              //     future:getData(value.toString()),
              //     builder:(context,snapshot){
              //       if(snapshot.hasData) {
              //         var data1=snapshot.data as dynamic;
              //         return DataTable(
              //             columns:[
              //               DataColumn(label: Text("SUJECT")),
              //               DataColumn(label: Text("IA1")),
              //               DataColumn(label: Text("IA2")),
              //               DataColumn(label: Text("IA3"))
              //             ],
              //             rows:[
              //               DataRow(cells:[
              //                 DataCell(Text('up')),
              //                 DataCell(Text(data1['ia1']['up'].toString())),
              //                 DataCell(Text(data1['ia2']['up'].toString())),
              //                 DataCell(Text(data1['ia2']['up'].toString())),
              //
              //               ]),
              //               DataRow(cells:[
              //                 DataCell(Text('cns')),
              //                 DataCell(Text(data1['ia1']['up'].toString())),
              //                 DataCell(Text(data1['ia2']['up'].toString())),
              //                 DataCell(Text(data1['ia2']['up'].toString())),
              //
              //               ]),
              //               DataRow(cells:[
              //                 DataCell(Text('me')),
              //                 DataCell(Text(data1['ia1']['up'].toString())),
              //                 DataCell(Text(data1['ia2']['up'].toString())),
              //                 DataCell(Text(data1['ia2']['up'].toString())),
              //
              //               ]),
              //               DataRow(cells:[
              //                 DataCell(Text('dbms')),
              //                 DataCell(Text(data1['ia1']['up'].toString())),
              //                 DataCell(Text(data1['ia2']['up'].toString())),
              //                 DataCell(Text(data1['ia2']['up'].toString())),
              //
              //               ]),
              //               DataRow(cells:[
              //                 DataCell(Text('atc')),
              //                 DataCell(Text(data1['ia1']['up'].toString())),
              //                 DataCell(Text(data1['ia2']['up'].toString())),
              //                 DataCell(Text(data1['ia2']['up'].toString())),
              //
              //               ]),
              //               DataRow(cells:[
              //                 DataCell(Text('adp')),
              //                 DataCell(Text(data1['ia1']['up'].toString())),
              //                 DataCell(Text(data1['ia2']['up'].toString())),
              //                 DataCell(Text(data1['ia2']['up'].toString())),
              //
              //               ])
              //
              //             ]);
              //         }
              //       else{
              //         return CircularProgressIndicator();
              //       }
              //
              //     }
              // )

            ],

          ),
        ),
      ),

      );

  }
}
