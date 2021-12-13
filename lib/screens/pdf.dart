import 'package:flutter/material.dart';
import 'package:uc_pdfview/pdf_view.dart';
class viewer extends StatefulWidget {
  const viewer({Key? key}) : super(key: key);

  @override
  _viewerState createState() => _viewerState();
}

class _viewerState extends State<viewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:PDFView()
    );
  }
}
