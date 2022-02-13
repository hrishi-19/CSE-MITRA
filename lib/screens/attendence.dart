import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mitra/screens/result.dart';
import 'package:mitra/widgets/bottom_navbar.dart';
class Attendence extends StatefulWidget {
  const Attendence({Key? key}) : super(key: key);

  @override
  _AttendenceState createState() => _AttendenceState();
}

class _AttendenceState extends State<Attendence> {
  var data;
  var wordup;
  var marks;

  Future<String> getJson() {
    return DefaultAssetBundle.of(context).loadString("data/marks.json");
  }
  Future<Map<String,dynamic>> getData(String val) async {
    data=jsonDecode(await getJson())[val];

   return data;
    //print(dataIndex);
  }
  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:   SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter USN",

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
              child: Text("Submit",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),),
              color: Colors.green,),
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
        bottomNavigationBar:Navbar()
      );

  }
}
