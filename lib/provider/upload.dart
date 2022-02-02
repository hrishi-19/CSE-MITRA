
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

Future uploadPdf()async{
  FilePickerResult? result = await FilePicker.platform.pickFiles();
  if(result != null) {
    Uint8List? fileBytes = result.files.first.bytes;
    String fileName = result.files.first.name;
    await FirebaseStorage.instance.ref(fileName).putData(fileBytes!);
  }


// Upload file

}