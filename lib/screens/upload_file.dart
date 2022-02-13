// import 'dart:html';
// import 'package:file_picker/file_picker.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
//
// class upload extends StatefulWidget {
//
//   @override
//   _uplaodState createState() => _uplaodState();
// }
//
// class _uplaodState extends State<upload> {
//  late File sample;
//   Future getImage() async{
//     var tempImage=await FilePicker.platform.pickFiles();
//     setState(() {
//       sample=tempImage as File;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:Center(
//         child:Column(
//           children: [
//             ElevatedButton(onPressed:getImage,
//                 child: Text("select Image")),
//             ElevatedButton(
//               onPressed: ()async{
//                 final StorageRefrence=FirebaseStorage.instance.ref().child("my img");
//                 final task=StorageRefrence.putFile(sample);
//               }, child: Text("upload"),
//
//             )
//           ],
//         )
//       )
//     );
//   }
//
// }
