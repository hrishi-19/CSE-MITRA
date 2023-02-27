import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mitra/screens/notes-sub/notesReader.dart';
import 'package:mitra/widgets/Notecard.dart';

class Notes extends StatefulWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  _NotesState createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  TextEditingController _title=TextEditingController();
  TextEditingController _content=TextEditingController();
  var firebaseUser= FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Padding(
                   padding: EdgeInsets.only(left: 10),
                     child: Image(image: AssetImage('assets/images/notes.png'),)),
                 Text("Your Recent notes",
                   style: GoogleFonts.josefinSans(
                     color:HexColor("#665DD0"),
                     fontWeight: FontWeight.bold,
                     fontSize: 25,

                   ),
                 )
               ],
             ),
              SizedBox(height: 25,),
              Expanded(
                child: StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance.collection("Notes").snapshots(),
                    builder: (context,AsyncSnapshot<QuerySnapshot> snapshot){
                    if(snapshot.connectionState==ConnectionState.waiting){
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if(snapshot.hasData){
                      return Container(
                        padding: EdgeInsets.only(top: 35,left: 10,right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50)),
                          color: Colors.grey.shade200,
                            boxShadow: [BoxShadow(
                                color: Colors.grey.shade500,
                                spreadRadius: 3,
                                blurRadius: 10,
                                offset:Offset(5,5.0)
                            ),
                              BoxShadow(
                                  color: Colors.white,
                                  spreadRadius: 3,
                                  blurRadius: 10,
                                  offset:Offset(-3,-3.0)
                              )]
                        ),
                        child: ListView(
                            children: snapshot.data!.docs.map((note) => NoteCard((){
                              print(note['title']);
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NoteReader( doc: note)));
                            }, note)).toList()
                        )

                      );
                      
                    }
                    return Text("no notes",style: TextStyle(color:Colors.black),);

                    }),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor:HexColor("#665DD0") ,
        onPressed: (){
          showbox();
        },
         icon:Icon(Icons.add), label: Text("Add notes"),
        
      ),
    );


  }
  Future showbox()=>showDialog(
  context: context,
  builder: (context)=>AlertDialog(
    title: Text("Add Notes",
    style:GoogleFonts.josefinSans(
      color:HexColor("#665DD0"),
      fontWeight: FontWeight.bold,
      fontSize: 20,

    )),
    content:Container(
      height: MediaQuery.of(context).size.height/0.4,
      child: Column(
          children: [
            TextField(
              controller: _title,
              decoration: InputDecoration(
                hintText: "Title",
              ),
              autofocus: true,
            ),
            TextField(
              controller: _content,
             keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                  hintText: "Contents"
              ),
            ),

          ],
        ),
    ),
    actions: [
      TextButton(onPressed: (){
        Navigator.pop(context);



      },
        child:  Text("CANCEL",
            style:GoogleFonts.josefinSans(
              color:HexColor("#665DD0"),
              fontWeight: FontWeight.bold,
              fontSize: 20,

            )),),
      TextButton(onPressed: ()async{

        FirebaseFirestore.instance.collection("Notes").
        add({
          "title":_title.text,
          "content":_content.text,
          "date":DateTime.now().toString().substring(0,20),
        }).then((value) => Navigator.pop(context)

        );

      },
        child:  Text("SUBMIT",
            style:GoogleFonts.josefinSans(
              color:HexColor("#665DD0"),
              fontWeight: FontWeight.bold,
              fontSize: 20,

            )),)
    ],


      ));

}
